<?php
class edit_form
{
    static $doc_id = "";
    static $doctext = "";
    static $issue_date = "";
    static $title = "";
    static $synopsis = "";
    static $gpo_selector = "";
    static $class_selector = "";
    static $system_selector = "";
    static $topic_selector = "";
    static $stand_selector = "";
    static $subjt_selector = "";
    static $security_selector = "";
    static $docpath = "";
    static $edit_log_path = "";
	static $saved_search_params = array();

    
    static function get_alpha_date()
    {
        $now = getdate();
        
        $yday = $now['yday'];
        $wday = $now['wday'];
        $ydaymod7 = $yday % 7;
        $full_weeks_since_jan1 = ($yday - $ydaymod7)/7;
        $week = $full_weeks_since_jan1 + 1;
        if ($ydaymod7 > $wday)
        {$week++;}
        $month = $now['mon'];
        $mday = $now['mday'];
        $year = $now['year'];
        /* if New Year's Day does not occur on a Sunday, the alpha system begins the new year with the Sunday before New Year's Day */
        if ($month == 12 && $mday > 32 - (7 - $wday))
        {$year++; $week = 1;}
        if ($year < 2000)
        {$year -= 1900;}
        else
        {
            $year -= 2000;
            $year_mod_10 = $year % 10;
            $decade = ($year - $year_mod_10)/10;
            $decadeLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $decadeLetter = substr($decadeLetters,$decade,1);
            $year = $decadeLetter.$year_mod_10;
        }
        $wday++;
        if ($week < 10) {$week = '0'.$week;}
        return $year.$week.$wday;
    }

    static function calculate_new_doc_id()
    {
        $alpha_date = self::get_alpha_date();
        $year = substr($alpha_date,0,2);
        $week = substr($alpha_date,2,2);
        $wday = substr($alpha_date,4,1);
        
        $user = $GLOBALS['user'];
        if ($user == 'ROOT')
        {$user = '___';}
        $docid_root = $year.$week.$wday.$user;
        $lcyear = strtolower($year);
        $search_dir = $GLOBALS['daybook_files_dir'].'/y'.$lcyear.'/'.$week.$wday.'/';
        $files = array();
        if (is_dir($search_dir))
        {
            $glob = $search_dir.$docid_root.'.*.txt';
            print '<p>Searching '.$glob.' <br />';
            $files = glob($glob);
            var_dump($files);
            print '<p>'."\n";
        }
        else
        {
            if (mkdir($search_dir) === false)
            {
                print '<p>Failed to create directory for today\'s documents: '.$search_dir.'</p>'."\n";
                return;
            }
        }
        $docnums = array();
        print '<p>Document numbers in use today by user '.$user.': ';
        $docnum_offset = strlen($search_dir) + 9;
        foreach ($files as $f)
        {
            $docnum = substr($f,$docnum_offset,3);
            $docnums[] = $docnum;
            print $docnum.' ';
        }
        print '</p>'."\n";
        $newdocnum = 0;
        $znewdocnum = "";
        $taken = true;
        while ($taken)
        {
            $newdocnum++;
            $taken = false;
            $znewdocnum = sprintf("%03d",$newdocnum);
            foreach ($docnums as $num)
            {
                if ($znewdocnum == $num)
                {$taken = true; break;}
            }
        }
        self::$doc_id = $docid_root.$znewdocnum;
		// new document version set to 0 so that when it is saved in log_edit(), it will be incremented to the standard first version number, 1.
        self::$docpath = $search_dir.$docid_root.'.'.$znewdocnum.'.0.txt';
		// so as not to confuse the user:
		$default_doc_path = $search_dir.$docid_root.'.'.$znewdocnum.'.1.txt';
        print '<p>Default new doc_id: '.self::$doc_id.'<br />default path to new document: '.$default_doc_path.'</p>'."\n";
    }
    public static function test_get_year_from_alpha_date($adate)
    {
        return self::get_year_from_alpha_date($adate);
    }   

    static function get_year_from_alpha_date($adate)
    {
        $ayear = strtoupper(substr($adate,0,2));
        print '<p>ayear: '.$ayear.'</p>';
        $decade = substr($ayear,0,1);
        $dyear = substr($ayear,1,2);
        $decadeLetters = '89ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $decadeNum = strpos($decadeLetters,$decade);
        print '<p>decade: '.$decade.' decadeNum: '.$decadeNum.'</p>';
        $year = 1980 + $decadeNum*10 + $dyear;
        return $year;
    }
    /*
      static function verify_alpha_date($adate,$date)
      {
      //Verify that the alpha date $adate and the DateTime object $date specify the same date
      $week = substr($adate,2,2);
      if ($week != '53') {return true;}
      $year = self::get_year_from_alpha_date($adate);
      $wday = substr($adate,4,1);
      $timestr = '1 January '.$year;
      $jan1time = strtotime($timestr);
      $jan1date = getdate($jan1time);
      $jan1wday = $jan1date['wday'];
      $yday = $week*7 + $wday - $jan1wday;
      if ($week == '01' && $jan1wday > $wday)
      {
      // New Year's Day is not Sunday, but it's this week and is still in the future, so the actual year is still one less than the alpha system year
      $year--;
      // get number of days in this year that is nearing completion
      $timestr = '31 December '.$year;
      $dec31time = strtotime($timestr);
      $dec31date = getdate($dec31time);
      $dec31yday = $dec31date['yday'];
      // in a non-leap year, $dec31yday is 364
      $yday = $dec31yday + $wday + 1 - $jan1wday;
      }
      $date = date_create_from_format('Yz',$year.$yday);
      $date_wday = $date->format('w');
      return ($date_wday == $wday);
      }
    */
    
    static function verify_week_53($adate)
    {
        /* Not all alpha years have 53 weeks. Most do not.  
           This function returns true for all $adate not in week 53
           For $adate in week 53, returns true if $adate's alpha year has 53 weeks
           based on the following assumptions:
           1. Every alpha year begins on a Sunday and ends on a Saturday, regardless of what day of the week is New Year's Day.  Therefore every alpha year has exactly 52 or 53 full weeks (no partial weeks.)
           2. Every alpha year is completed on or before December 31 of the corresponding real year.
           Therefore, if December 31 is not Saturday, the new alpha year begins on the last Sunday of December before New Year's Day.
		
           For documents in the years before 2000, this is not reliable. 
		*/
        $week = substr($adate,2,2);
        print '<p>week: '.$week.'</p>';
        if ($week != '53') {return true;}
        $year = self::get_year_from_alpha_date($adate);
        $wday = substr($adate,4,1);
        //alpha dates specify day of week from 1 to 7, getdate() from 0 to 6
        $wday--;  

        //verify that next New Year's Day is not this week
        $timestr = '1 Jan '.$year;
        $jan1time = strtotime($timestr);
        $jan1date = getdate($jan1time);
        $jan1wday = $jan1date['wday'];
        print '<p>jan1wday: '.$jan1wday.'</p>';
        $yday = ($week - 1)*7 + $wday - $jan1wday;
        print '<p>yday: '.$yday.'</p>';
        $date = date_create_from_format('Yz',$year.$yday);
        $date_monthNum = $date->format('n');
        //the 53rd week must be in December
        if ($date_monthNum != 12) {return false;}
        $date_wday = $date->format('w');
        $date_mday = $date->format('j');
        print '<p>date_wday: '.$date_wday.'</p>';
        print '<p>date: '.$date->format('l, F j, Y').'</p>';
        return ((31 - $date_mday) + $wday > 5);
    }
    
	static function read_selectors(&$sql)
    {
		/* the doc_class, gpo and security selectors are multiple selectors to allow searches matching any of multiple values, but here, when editing or creating a document, only single values are allowed. The other selectors allow unlimited selections while searching, but limited when creating or editing; in all cases, the limits are enforced by hidden input tags and JavaScript */
        if (isset ($_REQUEST['doc_class']))
        {
            $sql .= 'h.doc_class = '.$_REQUEST['doc_class'][0].',';
        }
        if (isset ($_REQUEST['gpo']))
        {
            $sql .= 'h.gpo = '.$_REQUEST['gpo'][0].', ';
        }
        if (isset ($_REQUEST['security']))
        {
            $sql .= 'h.security = '.$_REQUEST['security'][0].', ';
        }
        if (isset ($_REQUEST['system']))
        {
			$sysnum = 0;
            foreach ($_REQUEST['system'] as $sys)
            {
                $sql .= 'h.syscode0'.$sysnum.' = '.$sys.', ';
                $sysnum++;
			}
        }
        if (isset ($_REQUEST['stand']))
        {
			$standnum = 0;
            foreach ($_REQUEST['stand'] as $stand)
            {
                $sql .= 'h.stand0'.$standnum.' = '.$stand.', ';
                $standnum++;
			}
        }
        if (isset ($_REQUEST['subjt']))
        {
			$subjtnum = 0;
            foreach ($_REQUEST['subjt'] as $subjt)
            {
                $sql .= 'h.subjt0'.$subjtnum.' = '.$subjt.', ';
                $subjtnum++;
			}
        }
        if (isset ($_REQUEST['topic']))
        {
			$topicnum = 0;
            foreach ($_REQUEST['topic'] as $topic)
            {
                $sql .= 'h.topic_code0'.$topicnum.' = '.$topic.', ';
                $topicnum++;
			}
        }
	}	
	
	static function doc_exists($id)
	{
		$result = $GLOBALS['mysqli']->query('select count(*) from headerb where doc_id = "$id"');
        if (!$result) {
            printErr(sprintf("Query failed. Errormessage: %s", $mysqli->error));
        }
		$row = $result->fetch_row();
		if ($row[0] > 0)
		{
			return true;
		}
		else  // see if the file exists
		{
	        $alpha_date = substr($id,0,5);
    	    $year = substr($alpha_date,0,2);
        	$week = substr($alpha_date,2,2);
	        $wday = substr($alpha_date,4,1);
	        $lcyear = strtolower($year);
    	    $search_dir = $GLOBALS['daybook_files_dir'].'/y'.$lcyear.'/'.$week.$wday.'/';
			printErr("Searching $search_dir for existing files");
        	$files = array();
        	if (is_dir($search_dir))
        	{
				$docnum = substr($id,-3);
				$prefix = substr($id,0,8);
	           	$glob = $search_dir.$prefix.'.'.$docnum.'.*.txt';
				printErr("Searching for files matching $glob");
 	            $files = glob($glob);
				var_dump($files);
				if (count($files) > 0) 
				{
					printErr("Daybook files matching $glob found with no record in database");
					return true;
				}
			}
		}
		return false;
	}		
		
	
	// Determine whether the doc_id for a new document is valid 
    static function valid_doc_id ($id)
    {
        $id = strtoupper($id);
        if ($id != '' && preg_match('/[89A-Z][\d][012345][\d][1234567][A-Z_][A-Z_][A-Z_][\d][\d][\d]/i',$id)) 
        {
            // doc_id must begin with today's alpha date.
            $today_adate = self::get_alpha_date();
			$id_adate = substr($id,0,5);
            if ($today_adate != $id_adate)
			{
				printErr("doc_id must begin with today's alpha date ($today_adate).");
				return false;
			}
			// document must not already exist
			{
				if (self::doc_exists($id))
				{
					printErr("Document already exists");
					return false;
				}
			}
			// doc_id must contain the logged-in user's 3-character username, unless the user is ROOT.
			$user = substr($id,5,3);
			if (($user != $GLOBALS['user']) && ($GLOBALS['user'] != 'ROOT'))
			{
				printErr("doc_id must contain the logged-in user's 3-character username, unless the user is ROOT.");
				return false;
			}
			return true;
        }	
        return false;
    }
    public static function test_valid_doc_id ($id)
    {
        return self::valid_doc_id ($id);
    }
    
    static function find_latest_version_number ($id)
    {
        $id = strtolower($id);
        $rootdir = $GLOBALS['website_doc_root'].'\daybook_files\\';
        $year = substr($id,0,2);
        $day = substr($id,2,3);
        $username = substr($id,5,3);
        $docno = substr($id,8);
        $dirpath = $rootdir.'y'.$year.'\\'.$day;
        // suppress directory not found warnings
        error_reporting(E_ERROR | E_PARSE);
        if (!$d = dir($dirpath)) {return 0;}
        else
        {
            $latest_version = 0;
            while (false !== ($e = $d->read())) {
                if (($e==".")||($e=="..")) continue;
                $e = strtolower($e);
                if (substr($e,0,12) != $year.$day.$username.'.'.$docno) continue;
                $version = substr($e,13,-4);
                if ($version > $latest_version) {$latest_version = $version;}
            }
            {return $latest_version;}
        }
    }

	
    public static function log_edit()
    {
        self::$docpath = $_REQUEST['docpath'];
        /* increment version number */
        $doc_version_offset = strrpos(self::$docpath,'.',-5) + 1;
		$doc_id_offset = $doc_version_offset - 13;
        $version = substr(self::$docpath,$doc_version_offset,-4);
        $extension = substr(self::$docpath,-4);
        $version++;
        $prefix = substr(self::$docpath,0,$doc_version_offset);
        $docnum_from_docpath = substr($prefix,-4,3);
        $doc_id_root_from_docpath = substr($prefix,-13,8);
        $doc_id_from_docpath = strtoupper($doc_id_root_from_docpath.$docnum_from_docpath);
		$doc_id = $doc_id_from_docpath;
        if (isset($_REQUEST['doc_id']) && ($_REQUEST['doc_id'] != "") && (strtoupper($_REQUEST['doc_id']) != $doc_id))
        {
			if (self::valid_doc_id($_REQUEST['doc_id']))
			{
				$doc_id = strtoupper($_REQUEST['doc_id']);
				$prefix = substr($prefix,0,$doc_id_offset).substr($doc_id,0,8).'.'.substr($doc_id,8,3).'.';
				$version = self::find_latest_version_number($doc_id) + 1;
			}
			else
			{
				print '<p>'.$_REQUEST['doc_id'].' is not a valid doc_id for a document created today by '.$GLOBALS['user'].'<br />Using default doc_id '.$doc_id.'</p>'."\n"; 
			}
        }
        self::$docpath = $prefix.$version.$extension;
	
        /* save edited file contents as a new file with incremented version number at the end of its pathname */
        print '<p>Saving document as '.self::$docpath.'</p>';
        file_put_contents(self::$docpath,$_REQUEST['doctext']);
        /* log the creation of the new version */
        $sid = session_id();
        self::$edit_log_path = $GLOBALS['wdr'].'/edit_log_for_'.$_SERVER['PHP_AUTH_USER'].'_'.$sid.'.txt';
        print '<p>Appending log file '.self::$edit_log_path.'</p>';
        $log_msg = self::$docpath."\n";
        file_put_contents(self::$edit_log_path,$log_msg,FILE_APPEND);
	
        /* calculate sql (for MariaDB) to update the database with new information about the document */
		$sql = 'update master set ';
		self::read_selectors($sql);
		$sql = rtrim($sql,', ');
		$sql .= ' where h.doc_id = '.$doc_id.";\n";
		
        /* execute the MariaDB sql */
	
        /* log the MariaDB sql */
        file_put_contents(self::$edit_log_path,$sql,FILE_APPEND);
	
        /* calculate the sql to update the original alpha system database, which uses Sybase */
	
        /* log the Sybase sql */

    }

    static function mark_selection($selection,&$selector)
    {

        $selector = str_replace($selection, $selection.' selected', $selector);
    }


	public static function save_params()
	{
     /*  write a copy of the search request parameters to a server file with a unique name for each session.  Exclude the 'edit', 'selectedDocData', and 'doctext' parameters, none of which are needed to redisplay the result of the previously submitted query in the search form.  In particular, 'edit' and 'selectedDocData' need to be excluded to prevent the same document or a new document from being automatically selected on the next submit. */
        if (isset($_COOKIE['params_file']) && ($_COOKIE['params_file'] != ""))
        {$params_file = $_COOKIE['params_file'];}
        else
        {
            $wdr = str_replace('\\','/',$GLOBALS['website_doc_root']);
            $sid = session_id();
            $params_file = $wdr.'/params_file_for_'.$_SERVER['PHP_AUTH_USER'].'_'.$sid.'.txt';
            setcookie('params_file',$params_file);
        }
        $params = serialize($_REQUEST);
        $paramsu = unserialize($params);
        $paramsu['edit'] = NULL;
        $paramsu['selectedDocData'] = NULL;
        $paramsu['doctext'] = NULL;
        $params = serialize($paramsu);

        
        /*
		foreach ($_REQUEST as $name => $value)
		{
			if ($name == 'edit' || $name == 'selectedDocData' || $name == 'doctext') {continue;}
            $params .= $name.':'.$value.$GLOBALS['param_separator'];
        */
        // overwrite parameters file
        file_put_contents($params_file,$params);

	}



    public static function process_form()
    {
        if ($_REQUEST['edit'] != 'new')
        {
            print '<p>processing the edit form for '.$_REQUEST['edit'].'</p>';

            self::$docpath = $GLOBALS['wdr'].$_REQUEST['edit'];
            print '<p>document path: '.self::$docpath.'</p>';

            self::$doctext = file_get_contents(mb_convert_encoding(self::$docpath,'UTF-8', 'ISO-8859-1'));
            $doc_id_offset = strrpos($_REQUEST['edit'],'/') + 1;
            self::$doc_id = substr ($_REQUEST['edit'], $doc_id_offset,8).substr ($_REQUEST['edit'], $doc_id_offset+9,3);
        }
        else
        {
            print '<p>Creating new document</p>';
            self::calculate_new_doc_id();
        }
        /* initialize the selectors with nothing selected, using the selection lists obtained from the database in search_form::process_form().  Since we are using these selectors to set the metadata for a single document instead of searching for documents, the gpo, class and security selectors will no longer allow multiple selections, and the other selectors will allow only a limited number of selections as follows: system:4, stand:3, subjt:3, topic:2.  These latter limitations will be enforced by JavaScript because there is no HTML code to enforce a limited number of selections other than one.  The JavaScript is enabled by inserting the custom attribute 'max' */
        search_form::init_selectors();

        self::$gpo_selector = search_form::$gpo_selector;
        self::$class_selector = search_form::$class_selector;
        self::$system_selector = search_form::$system_selector;
        self::$topic_selector = search_form::$topic_selector;
        self::$stand_selector = search_form::$stand_selector;
        self::$subjt_selector = search_form::$subjt_selector;
        self::$security_selector = search_form::$security_selector;
		
        $max_choices = array(1,1,1,4,2,3,3);
        $selector_ids = array('gpo','doc_class','security','system','topic','stand','subjt');
        $selectors =  array(&self::$gpo_selector,&self::$class_selector,&self::$security_selector,&self::$system_selector,&self::$topic_selector,&self::$stand_selector, &self::$subjt_selector);
		
        printErr("modifying selectors");
        //		$replen = strlen('[]" multiple');
        $i = 0;
        foreach ($selectors as &$selector)
        {
            //			$pos = strpos($selector, '[]" multiple');
            $hidden = '<input type="hidden" id="selector_'.$selector_ids[$i].'"  value="'.$max_choices[$i].'" />';
            $selector = $hidden."\n".$selector;
            $i++;
        }

        if (isset ($_REQUEST['selectedDocData']))
        {
            printErr('filling form with selected document metadata: '.$_REQUEST['selectedDocData']);
            $pairs = explode ('; ',$_REQUEST['selectedDocData']);
            foreach ($pairs as $pair)
            {
                $name = strtok($pair,':');
                $value = strtok(':');
                // for 'sys','stand', and 'topic' metadata, extract the code from the code text combination that is in the selectedDocData for display.
                $code = strtok($value,' ');
                $valueAttribute = 'value="'.$value.'"';
                $valueCodeAttribute = 'value="'.$code.'"';

                switch ($name) {
                case 'issue_date': 
                    self::$issue_date = $value;
                    break;
                case 'title': 
                    self::$title = $value;
                    break;
                case 'synopsis': 
                    self::$synopsis = $value;
                    break;
                case 'doc_class': 
                    self::mark_selection($valueAttribute, self::$class_selector);
                    break;
                case 'gpo': 
                    self::mark_selection($valueAttribute, self::$gpo_selector);
                    break;
                case 'security': 
                    self::mark_selection($valueAttribute, self::$security_selector);
                    break;
                case 'sys0': 
                case 'sys1': 
                case 'sys2': 
                case 'sys3':
                    self::mark_selection($valueCodeAttribute, self::$system_selector);
                    break;
                case 'stand0': 
                case 'stand1': 
                case 'stand2':
                    self::mark_selection($valueCodeAttribute, self::$stand_selector);
                    break;
                case 'subjt0': 
                case 'subjt1': 
                case 'subjt2': 
                    self::mark_selection($valueAttribute, self::$subjt_selector);
                    break;
                case 'topic0': 
                case 'topic1': 
                   self::mark_selection($valueCodeAttribute, self::$topic_selector);
                    break;
                } // end switch
            } // end foreach
        } // end if isset

        self::save_params();
    
        print Latin1toUTF8('<div style="text-align:left">
  <form action="https://'.$GLOBALS['CurrentUrl'].'" method="POST">
  
   
  <hr />
  
  <div class="short_text">
  <label for="doc_id">doc_id</label><br /><input type="text" class="form-text" length="12" name="doc_id" id="doc_id" value="'.self::$doc_id.'" />
  </div>
  <div class="short_text">
   <label for="issue_date">issue_date</label><br /><input type="text" class="form-text"  name="issue_date" id="issue_date" length="6" value="'.self::$issue_date.'" />
  </div>
 <div class="long_text">
  <label for="title">title</label><br /><input type="text" class="form-text"  name="title" id="title" length="35" value="'.self::$title.'" />
  </div>
 
  <div class="long_select">'.self::$class_selector.'</div>
 
  <div class="long_select">'.self::$system_selector.'</div>
  <div class="long_select">'.self::$topic_selector.'</div>
  <div class="long_select">'.self::$stand_selector.'</div>
  <div class="long_select">'.self::$subjt_selector.'</div>
 
 <div class="short_select">'.self::$gpo_selector.'</div>
 
 <div class="short_select">'.self::$security_selector.'</div>

<img alt="clear" class="clear" src="/site/1x16000-clear.gif">
<textarea name="doctext" id="doctext" rows="30">'.self::$doctext.'</textarea>
  <input type="hidden" name="SessionEstablished" />	
  <input type="hidden" name="docpath" value="'.self::$docpath.'"/>	
  <input type="submit" value="Submit" class="form-submit" /> &nbsp;<input type="reset" value="Reset" class="form-submit" /> &nbsp;<button type="button" class="form-submit" onclick="window.history.back();">Cancel</button></form>');

            // This will not clear the authentication cache, but
            // it will replace the "real" login data with bogus data
            print '<a href="https://reset:reset@'. $GLOBALS['CurrentUrl'] .'?Logout=1"><b>LOGOUT</b></a></div>';


            return;
    } // end process_form
} // end class
?>
