<?php
class edit_form
{
    static $doc_id = "";
    static $doctext = "";
    static $issue_date = "";
    static $title = "";
    static $gpo_selector = "";
    static $class_selector = "";
    static $system_selector = "";
    static $topic_selector = "";
    static $stand_selector = "";
    static $subjt_selector = "";
    static $security_selector = "";
    static $docpath = "";
    static $wdr = "";
    static $user = "";
    static $edit_log_path = "";

    public static function init($user = NULL)
    {
        self::$wdr = str_replace('\\','/',$GLOBALS['website_doc_root']);
        if ($user === NULL)
        {
            self::$user = strtoupper($_SERVER['PHP_AUTH_USER']);
        }
        else
        {self::$user = strtoupper($user);}
    }

    
    static function get_alpha_date($time = 'now')
    {
        $now = array();
        if (is_int($time) !== false)
        {
            $now = getdate($time);
        }
        else
        {
            $now = getdate();
        }
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

    public static function test_get_alpha_date($time = 'now')
    {
        return self::get_alpha_date($time);
    }   
    public static function test_calculate_new_doc_id()
    {
        self::init('ROOT');
        self::calculate_new_doc_id();
        return self::$doc_id;
    }   

    static function calculate_new_doc_id()
    {
        $daybook_files_dir = self::$wdr.'/daybook_files';

        $alpha_date = self::get_alpha_date();
        $year = substr($alpha_date,0,2);
        $week = substr($alpha_date,2,2);
        $wday = substr($alpha_date,4,1);
        
        $user = self::$user;
        if ($user == 'ROOT')
        {$user = '___';}
        $docid_root = $year.$week.$wday.$user;
        $lcyear = strtolower($year);
        $search_dir = $daybook_files_dir.'/y'.$lcyear.'/'.$week.$wday.'/';
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
        self::$docpath = $search_dir.$docid_root.'.'.$znewdocnum.'.1.txt';
        print '<p>Default path to new document: '.self::$docpath.'</p>'."\n";
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
        //Not all alpha years have 53 weeks. Most do not.
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
    
    public static function valid_doc_id ($id)
    {
        $id = strtoupper($id);
        if ($id != '' && preg_match('/[89A-Z][\d][012345][\d][1234567][A-Z_][A-Z_][A-Z_][\d][\d][\d]/i',$id)) 
        {
            // doc_id must be of the present or a past year.
            $alpha_date = self::get_alpha_date();
            $year = self::get_year_from_alpha_date($alpha_date);
            $idyear = self::get_year_from_alpha_date(substr($id,0,2));
            if ($idyear > $year) {return false;}
            // no week 00; first week is 01
            if (substr($id,2,2) == '00') {return false;}
            // maximum week is 53
            $week_decade = substr($id,2,1);
            $dweek = substr($id,3,1);
            if (($week_decade == 5) && ($dweek > 3))
            {return false;}
            $wday = substr($id,4,1);
            if ((0 < $wday) && ($wday < 8))
            {return self::verify_week_53(substr($id,0,5));}
        }	
        return false;
    }
    public static function test_valid_doc_id ($id)
    {
        return self::valid_doc_id ($id);
    }
    
    public static function log_edit()
    {
        self::init();
        self::$docpath = $_REQUEST['docpath'];
        /* increment version number */
        $doc_version_offset = strrpos(self::$docpath,'.',-5) + 1;
        $version = substr(self::$docpath,$doc_version_offset,-4);
        $extension = substr(self::$docpath,-4);
        $version++;
        $prefix = substr(self::$docpath,0,$doc_version_offset);
        $docnum_from_docpath = substr($prefix,-4,3);
        $doc_id_root_from_docpath = substr($prefix,-12,8);
        $doc_id_from_docpath = strtoupper($doc_id_root_from_docpath.$docnum_from_docpath);
        if (isset($_REQUEST['doc_id']) && ($_REQUEST['doc_id'] != "") && (strtoupper($_REQUEST['doc_id']) != $doc_id_from_docpath))
        {


        }
            


        self::$docpath = $prefix.$version.$extension;
	
        /* save edited file contents as a new file with incremented version number at the end of its pathname */
        print '<p>Saving document as '.self::$docpath.'</p>';
        file_put_contents(self::$docpath,$_REQUEST['doctext']);
        /* log the creation of the new version */
        self::$edit_log_path = self::$wdr.'/edit_log.txt';
        print '<p>Appending log file '.self::$edit_log_path.'</p>';
        $log_msg = self::$docpath."\n";
        file_put_contents(self::$edit_log_path,$log_msg,FILE_APPEND);
	
        /* calculate sql (for MariaDB) to update the database with new information about the document */
	
        /* execute the MariaDB sql */
	
        /* log the MariaDB sql */
	
        /* calculate the sql to update the original alpha system database, which uses Sybase */
	
        /* log the Sybase sql */

    }

    static function mark_selection($selection,&$selector)
    {

        $str = str_replace($selection, $selection.' selected', $selector);

        if (isset($str) && (substr($str,0,6) == '<label')) 
        {$selector = $str;}
        else
        {print "<p>Warning: invalid selector ".substr($selector,0,30)."...</p>\n";}	
    }


    public static function process_form()
    {
        self::init();
        if ($_REQUEST['edit'] != 'new')
        {
            print '<p>processing the edit form for '.$_REQUEST['edit'].'</p>';

            self::$docpath = self::$wdr.$_REQUEST['edit'];
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
        /* initialize the selectors with nothing selected, using the selection lists obtained from the database in search_form::process_form() */
        search_form::init_selectors();

        self::$gpo_selector = search_form::$gpo_selector;
        self::$class_selector = search_form::$class_selector;
        self::$system_selector = search_form::$system_selector;
        self::$topic_selector = search_form::$topic_selector;
        self::$stand_selector = search_form::$stand_selector;
        self::$subjt_selector = search_form::$subjt_selector;
        self::$security_selector = search_form::$security_selector;

        if (isset ($_REQUEST['selectedDocData']))
        {
            $pairs = explode ('; ',$_REQUEST['selectedDocData']);
            foreach ($pairs as $pair)
            {
                $name = strtok($pair,':');
                $value = strtok(':');
                $valueAttribute = 'value="'.$value.'"';

                switch ($name) {
                case 'issue_date': 
                    self::$issue_date = $value;
                    break;
                case 'title': 
                    self::$title = $value;
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
                case 'sys_code00': 
                case 'sys_code01': 
                case 'sys_code02': 
                case 'sys_code03': 
                    self::mark_selection($valueAttribute, self::$system_selector);
                    break;
                case 'stand00': 
                case 'stand01': 
                case 'stand02': 
                    self::mark_selection($valueAttribute, self::$stand_selector);
                    break;
                case 'subjt00': 
                case 'subjt01': 
                case 'subjt02': 
                    self::mark_selection($valueAttribute, self::$subjt_selector);
                    break;
                case 'topic00': 
                case 'topic01': 
                    self::mark_selection($valueAttribute, self::$topic_selector);
                    break;
                } // end switch
            } // end foreach
        } // end if isset
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
