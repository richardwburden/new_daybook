<?php
class search_form
{
    public static $issue_date = "";
    public static $title = "";
    public static $gpo_selector = "";
    public static $class_selector = "";
    public static $system_selector = "";
    public static $topic_selector = "";
    public static $stand_selector = "";
    public static $subjt_selector = "";
    public static $security_selector = "";
    public static $max_rows_plus = 0;
    public static $first_rownum_minus = 0;

    static $mysqli = NULL;
    static $patterns = "";

    static function parray ($arr)
    {
        $output = "";
        foreach($arr as $item)
        {$output.= "'".$item."',";}
        if (strlen($output) > 0)
        {
            $output = substr($output,0,-1);
        }
        return $output;
    }


    /* add the user's selections to the selectors */
    static function touch_selectors(&$form_filled,&$sql)
    {
        //print "<h4>Touching selectors</h4>\n";
        if (isset ($_REQUEST['doc_class']))
        {
            $form_filled = true;
            $doc_class = $_REQUEST['doc_class'];
            foreach ($doc_class as $class)
            {
                $valueAttribute = 'value="'.$class.'"';
                self::$class_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$class_selector);
            }
		
	
            $sql .= 'doc_class in ('.self::parray($doc_class).') and ';
        }
        if (isset ($_REQUEST['gpo']))
        {
            $form_filled = true;
            $gpo = $_REQUEST['gpo'];
            foreach ($gpo as $gpocode)
            {
                $valueAttribute = 'value="'.$gpocode.'"';
                self::$gpo_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$gpo_selector);
            }
            $sql .= 'gpo in ('.self::parray($gpo).') and ';
        }
        if (isset ($_REQUEST['security']))
        {
            $form_filled = true;
            $security = $_REQUEST['security'];
            foreach ($security as $seccode)
            {
                $valueAttribute = 'value="'.$seccode.'"';
                self::$security_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$security_selector);
            }
            $sql .= 'security in ('.self::parray($security).') and ';
        }

        if (isset ($_REQUEST['system']))
        {
            $form_filled = true;
            $system = $_REQUEST['system'];
            foreach ($system as $syscode)
            {
                $valueAttribute = 'value="'.$syscode.'"';
                self::$system_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$system_selector);
            }
            $sql .= '(sys_code00 in ('.self::parray($system).') or 
	sys_code01 in ('.self::parray($system).') or 
	sys_code02 in ('.self::parray($system).') or 
	sys_code03 in ('.self::parray($system).')) and ';
        }

        if (isset ($_REQUEST['stand']))
        {
            $form_filled = true;
            $stand = $_REQUEST['stand'];
            foreach ($stand as $stcode)
            {
                $valueAttribute = 'value="'.$stcode.'"';
                self::$stand_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$stand_selector);
            }
            $sql .= '(stand00 in ('.self::parray($stand).') or 
	stand01 in ('.self::parray($stand).') or 
	stand02 in ('.self::parray($stand).')) and ';
        }

        if (isset ($_REQUEST['subjt']))
        {
            $form_filled = true;
            $subjt = $_REQUEST['subjt'];
            foreach ($subjt as $subcode)
            {
                $valueAttribute = 'value="'.$subcode.'"';
                self::$subjt_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$subjt_selector);
            }
            $sql .= '(subjt00 in ('.self::parray($subjt).') or
	subjt01 in ('.self::parray($subjt).') or 
	subjt02 in ('.self::parray($subjt).')) and ';
        }

        if (isset ($_REQUEST['topic']))
        {
            $form_filled = true;
            $topic = $_REQUEST['topic'];
            foreach ($topic as $tcode)
            {
                $valueAttribute = 'value="'.$tcode.'"';
                self::$topic_selector = str_replace($valueAttribute,$valueAttribute.' selected',self::$topic_selector);
            }
            $sql .= '(topic_code00 in ('.self::parray($topic).') or
	topic_code01 in ('.self::parray($topic).')) and ';
        }
    }
    static function valid_issue_date (&$issue_date, $like_or_regexp = 'like')
    {
        if ($like_or_regexp == 'regexp') {return true;}
        
        // replace wildcard '*' with the MariaDB equivalent, '%'
        $issue_date = str_replace('*','%',$issue_date);
        if (preg_match('/^[\d%?]*%[\d%?]*$/',$issue_date)) 
        {
            // replace wildcard '?' with the MariaDB equivalent, '_'
            $issue_date = str_replace('?','_',$issue_date);
            return true;
        }
        $dt = new DateTime();
        $current_year = $dt->format('yy');
        $short_months = array('04','06','09','11');
        $valid_date = false;
        if ($issue_date != '' && preg_match('/\d\d\d\d\d\d/',$issue_date)) 
        {
            $year = substr($issue_date,0,2);
            $month = substr($issue_date,2,2);
            $day = substr($issue_date,4,2);
            if (($year > 80 || $year <= $current_year) && $month > 0 
                && $month < 13 && $day > 0 && $day < 32 && 
                !($day == 31 && in_array($month, $short_months)) && 
                !($day > 29 && $month == '02')) {$valid_date = true;}
            if (($year % 4 == 0) && $month == '02' && day == 29) {$valid_date = true;}
        }	
        return $valid_date;
    }

    static function valid_doc_id (&$id, $like_or_regexp = 'like')
    {
        if ($like_or_regexp == 'regexp') {return true;}

        if ($id != '' && preg_match('/[89abcd?][?\d][012345?][\d?][1234567?]....../i',$id)) 
        {
            // no week 00; first week is 01
            if (substr($id,2,2 == '00')) {return false;}
            // maximum week is 53
            if ((substr($id,2,1) == '5') && (substr($id,3,1) != '?') && (substr($id,3,1) > '3'))
            {return false;}
            //escape underscores, which are considered single-character wildcards in MariaDB like clauses.
            $id = str_replace('_','\\_',$id);
            //replace '?' with '_' because MariaDB does not consider '?' to be a single-character wildcard.
            $id = str_replace('?','_',$id);
            $id = strtoupper($id);
            return true;
        }	
        return false;
    }

    static function find_latest_version_of_daybook_file ($id)
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
        if (!$d = dir($dirpath)) {return false;}
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
            if ($latest_version > 0) {return '/daybook_files/y'.$year.'/'.$day.'/'.$year.$day.$username.'.'.$docno.'.'.$latest_version.'.txt';}
            else {return false;}
        }
    }
    static function valid_first_rownum($num)
    {
        if (is_numeric($num) && $num >= 0 && is_int($num + 0)) {return true;}
        else {return false;}
    }
    static function valid_max_rows($num)
    {
        if (is_numeric($num) && $num >= 1 && $num <= 1000 && is_int($num + 0)) {return true;}
        else {return false;}
    }

    static function calculate_edit_radio ($href)
    {
        $doc_id = strtoupper (preg_replace('/.*\/(........)\.(...).*/','$1$2',$href));
        $match_found = false;
        $radio = ""; // doc_id = $doc_id; permissions: ".count($GLOBALS['doc_edit_permissions']." ");
        foreach ($GLOBALS['doc_edit_permissions'] as $dep)
        {
            //$radio .= "dep = $dep ";
            if (preg_match("/$dep/",$doc_id)) {$match_found = true; break;}
        }
        if ($match_found)
        {
            $GLOBALS['edit'] = true;
            $radio = ' <div class="radio"><label class="radio" for="edit'.$doc_id.'">EDIT</label><input class="radio" type="radio" name="edit" id="edit'.$doc_id.'" value="'.$href.'" onClick="getSelectedDocData(\''.$doc_id.'\');" /></div> ';
        }
        return $radio;
    }

    static function process_query ($mysqli,$sql_count,$sql,$first_rownum)
    {
	    $headers = "";
        $editable_headers = "";
        // print "<p>process_query: count query: $sql_count</p>\n";
        $count_result =  $mysqli->query($sql_count);
        if ($count_result)
        {
            $row = $count_result->fetch_row();
            $count_msg = "<p>$row[0] headers found ";
        }

        $result = $mysqli->query($sql);
        if (!$result) {
            printErr("<b>QUERY FAILED.</b> Errormessage: $mysqli->error");
        }
        else // query succeeded
        {
            //calculate whether the document is in the permanent or temporary index
            $idx = 'p';  
            if (strpos($sql,'tempb') !== false) {$idx = 't';}
		
            $row = ""; /* each $row will contain the HTML formatted data of one header, which may combine several rows of data returned by the database query, one for each line of the synopsis */
            $synopsis = "synopsis:";
            $last_id = "";
            $first_id = "";
			$num_ids = 0;
            $num_data_rows = 0;
            $num_data_rows_processed = 0;
			$edit_radio = "";
            $last_synopsis_complete = true;
            $first_synopsis_complete = true;
            while ($data = $result->fetch_array())
            {
                $num_data_rows++; /* rows of data returned by the database query, which may be greater than $num_ids, and may be up to two rows greater than what the user intended and what will actually become part of the listing of headers, in order to see whether a header is split across the last skipped row or the last row included within the limit. If a header is found to be split, this is indicated with [SYNOPSIS INCOMPLETE] in boldface at the end of the header. */
                if ($num_data_rows == 1)
                {
                    $first_id = $data['doc_id'];
                    if ($first_rownum > 0)
                    {continue;}
                }
                if ($num_data_rows == self::$max_rows_plus)
                {
                    if ($data['doc_id'] == $last_id)
                    {
                        $last_synopsis_complete = false;
                    }
                    continue;
                }
                $num_data_rows_processed++; /* rows of data actually processed */
                if ($first_rownum > 0 && $num_data_rows == 2 && $data['doc_id'] == $first_id)
                {$first_synopsis_complete = false;}
                
                if ($data['doc_id'] != $last_id)
                {
                    if ($last_id != "")
                    {
                        // complete previous row
                        $row .= $synopsis;
                        $row = substr($row,0,-1); //remove final '|'

                        if ($num_ids == 0 && $first_synopsis_complete === false)
                        {$row .= '<b> [SYNOPSIS INCOMPLETE]</b>';}
 
                        $row .= '</div>';

                        if ($edit_radio != "")
                        {
                            $editable_headers .= '<div class="header">'.$row."</div>\n";
                        }
                        else
                        {
                            $headers .= '<div class="header">'.$row."</div>\n";
                        }
                        // start new row
                        $row = "";
                        $synopsis = "synopsis:";
						$edit_radio = "";
						$num_ids++;
                    }
                    $last_id = $data['doc_id'];
                    foreach ($data as $key => $value)
                    {
                        if (is_int($key)) {continue;}
                        if ($key == 'doc_id')
                        {
                            $id = strtolower($value);
                            $href = self::find_latest_version_of_daybook_file($id);
                            if ($href)
                            {
                                $edit_radio = self::calculate_edit_radio($href);
                                $datum = '<div class="link"><b><a href="'.$href.'" target="_blank">'.$value.'</a></b></div>'.$edit_radio.' <div class="data">';
                            }
                            else
                            {
                                $datum = '<div class="link"><b>'.$value.'</b>(file not found) </div> <div class="data">';
                            }
                            $row .= $datum;
                        }
                        else
                        {
                            switch ($key)
                            {
                            case 'sys0':
                            case 'sys1':
                            case 'sys2':
                            case 'sys3':
                            case 'stand0':
                            case 'stand1':
                            case 'stand2':
                            case 'topic0':
                            case 'topic1':
                                if (isset($value) && is_string($value) && strlen($value) > 0 && $value != ' ')
                                {
                                    $datum = $key.':'.$value.' ';
                                    $row .= $datum;
                                }
                                break;
                            case 'syst0':
                            case 'syst1':
                            case 'syst2':
                            case 'syst3':
                            case 'standt0':
                            case 'standt1':
                            case 'standt2':
                            case 'topict0':
                            case 'topict1':
                                $code_key = substr($key,0,-2).substr($key,-1); // drop the 't'
                                if (isset ($data[$code_key]) && is_string($data[$code_key]) && strlen($data[$code_key]) > 0 && $data[$code_key] != ' ')
                                {
                                    $datum = $value.'; ';
                                    $row .= $datum;
                                }
                                break;
                            case 'synopsis':
                                if (isset($value) && is_string($value) && $value != '0')
                                {$synopsis .= $value;}
                                break;
                            default:
                                $datum = $key.':'.$value.'; ';
                                $row .= $datum;
                            }
                        }
                    }
                }
                else if (isset($data['synopsis']) && is_string($data['synopsis']) && $data['synopsis'] != '0')// not a new doc_id
                {
                    $synopsis .= $data['synopsis'];
                }
                $synopsis .= '|';
            }
            // complete final row
			if ($row != "")
			{
            	$row .= $synopsis;

	            $row = substr($row,0,-1); //remove final '|'

                if ($last_synopsis_complete === false)
                {$row .= '<b> [SYNOPSIS INCOMPLETE]</b>';}

    	        $row .= '</div>';
				$num_ids++;
            	if ($edit_radio != "")
            	{
                	$editable_headers .= '<div class="header">'.$row."</div>\n";
            	}
            	else
            	{
                	$headers .= '<div class="header">'.$row."</div>\n";
            	}
			}
			print '<span class="highlight">'.$num_ids.' headers shown ('.$num_data_rows_processed.' rows of data) after first '.	$first_rownum.' rows of data skipped.</span> The database places each line of the synopsis in a separate row of data; each header combines all the lines of synopsis for a doc_id found in the <i>limited</i> query results. If the lines of synopsis for a header are split across the first or last row of the <i>limited</i> query results and the rows of the unlimited query results that precede or follow, this is indicated with <b>[SYNOPSIS INCOMPLETE]</b> at the end of the first or last header in the listing.</p>'."\n";
        } // end query succeeded

        return $editable_headers.$headers;
    }


    public static function init_selectors()
    {
        if ($GLOBALS['mysqli'] === NULL)
        {
            init_db_session();
        }
        /* use cookies to avoid need to re-query the database */
        if (isset($_COOKIE['selectors_file']) && ($_COOKIE['selectors_file'] != ""))
        {
            print '<p>Filling selection lists from server file '.$_COOKIE['selectors_file'].'</p>';
            $selectors = file_get_contents($_COOKIE['selectors_file']);
            if ($selectors === false)
            {
                print("<div class='errbar'>File read failed</div>\n");
            }
            if (! isset($selectors) || (substr($selectors,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selectors ".substr($selectors,0,30)."...</p>\n";}
	
            self::$gpo_selector = strtok($selectors,'#%#');
            if (! isset(self::$gpo_selector) || (substr(self::$gpo_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$gpo_selector,0,30)."...</p>\n";}
	
            self::$class_selector = strtok('#%#');
            if (! isset(self::$class_selector) || (substr(self::$class_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$class_selector,0,30)."...</p>\n";}
	
            self::$system_selector = strtok('#%#');
            if (! isset(self::$system_selector) || (substr(self::$system_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$system_selector,0,30)."...</p>\n";}
	
            self::$topic_selector = strtok('#%#');
            if (! isset(self::$topic_selector) || (substr(self::$topic_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$topic_selector,0,30)."...</p>\n";}
	
            self::$stand_selector = strtok('#%#');
            if (! isset(self::$stand_selector) || (substr(self::$stand_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$stand_selector,0,30)."...</p>\n";}
	
            self::$subjt_selector = strtok('#%#');
            if (! isset(self::$subjt_selector) || (substr(self::$subjt_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$subjt_selector,0,30)."...</p>\n";}
	
            self::$security_selector = strtok('#%#');
            if (! isset(self::$security_selector) || (substr(self::$security_selector,0,6) != '<label')) 
            {print "<p class='warning'>Warning: invalid selector ".substr(self::$security_selector,0,30)."...</p>\n";}

            return;
        }
        /* else, query the database */
        self::$gpo_selector = "";
        $result = $GLOBALS['mysqli']->query("select distinct gpo from master order by gpo asc");
        if (!$result) {
            printf("<span class='error'>query to list gpos failed. Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$gpo_selector = '<label for="gpo">gpo</label><br /><select name="gpo[]" multiple class="form_select" id="gpo">'."\n";
            while ($data = $result->fetch_object())
            {
                self::$gpo_selector.= '<option value="'.$data->gpo.'">'.$data->gpo."</option>\n";
            }
            self::$gpo_selector .= "</select>\n";
        }

        self::$security_selector = "";
        $result = $GLOBALS['mysqli']->query("select distinct security from master order by security asc");
        if (!$result) {
            printf("<span class='error'>query to list security levels failed. Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$security_selector = '<label for="security">security</label><br /><select name="security[]" multiple class="form_select" id="security">'."\n";
            while ($data = $result->fetch_object())
            {
                self::$security_selector.= '<option value="'.$data->security.'">'.$data->security."</option>\n";
            }
            self::$security_selector .= "</select>\n";
        }

        self::$class_selector = "";
        $result = $GLOBALS['mysqli']->query("select code, trim(text) as text from class order by text");
        if (!$result) {
            printf("<span class='error'>Query to list document classes failed. Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$class_selector = '<label for="doc_class">doc_class</label><br /><select name="doc_class[]" multiple class="form_select" id="doc_class">'."\n";

            while ($data = $result->fetch_object())
            {
                self::$class_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
            }
            self::$class_selector .= "</select>\n";
        }

        self::$system_selector = "";
        $result = $GLOBALS['mysqli']->query("select code, trim(text) as text from system order by text");
        if (!$result) {
            printf("<span class='error'>Query to list systems failed. Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$system_selector = '<label for="system">system</label><br /><select name="system[]" multiple class="form_select" id="system">'."\n";
            while ($data = $result->fetch_object())
            {
                self::$system_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
            }
            self::$system_selector .= "</select>\n";
        }

        self::$topic_selector = "";
        $result = $GLOBALS['mysqli']->query("select code, text, trim(both '\t' from trim(both '\"' from trim(both '\'' from trim(text)))) as t from topic order by t");
        if (!$result) {
            printf("<span class='error'>Query to list topics failed. Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$topic_selector = '<label for="topic">topic</label><br /><select name="topic[]" multiple class="form_select" id="topic">'."\n";
            while ($data = $result->fetch_object())
            {
                self::$topic_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
            }
            self::$topic_selector .= "</select>\n";
        }

        self::$stand_selector = "";
        $result = $GLOBALS['mysqli']->query("select code, text from stand order by code");
        if (!$result) {
            printf("<span class='error'>Query to list stands failed: Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$stand_selector = '<label for="stand">stand</label><br /><select name="stand[]" multiple class="form_select" id="stand">'."\n";
            while ($data = $result->fetch_object())
            {
				$text = str_replace(' ','&nbsp;',$data->text);
                self::$stand_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$text."</option>\n";
            }
            self::$stand_selector .= "</select>\n";
        }

        self::$subjt_selector = "";
        $result = $GLOBALS['mysqli']->query("select distinct subjt from dtl order by subjt asc");
        if (!$result) {
            printf("<span class='error'>Query to list subjts failed: Errormessage: %s</span>\n", $GLOBALS['mysqli']->error);
        }
        else
        {
            self::$subjt_selector = '<label for="subjt">subjt</label><br /><select name="subjt[]" multiple class="form_select" id="subjt">'."\n";
            while ($data = $result->fetch_object())
            {
                $display = str_replace(' ','&nbsp;',$data->subjt);
                self::$subjt_selector.= '<option value="'.$data->subjt.'">'.$display."</option>\n";
            }
            self::$subjt_selector .= "</select>\n";
        }

        /* write a copy of the selection lists to a server file with a unique name for each session */
        $wdr = str_replace('\\','/',$GLOBALS['website_doc_root']);
        $sid = session_id();
        $selectors_file = $wdr.'/selectors_file_for_'.$_SERVER['PHP_AUTH_USER'].'_'.$sid.'.txt';
        file_put_contents($selectors_file,self::$gpo_selector.'#%#');
        file_put_contents($selectors_file,self::$class_selector.'#%#',FILE_APPEND);
        file_put_contents($selectors_file,self::$system_selector.'#%#',FILE_APPEND);
        file_put_contents($selectors_file,self::$topic_selector.'#%#',FILE_APPEND);
        file_put_contents($selectors_file,self::$stand_selector.'#%#',FILE_APPEND);
        file_put_contents($selectors_file,self::$subjt_selector.'#%#',FILE_APPEND);
        file_put_contents($selectors_file,self::$security_selector,FILE_APPEND);

        setcookie('selectors_file',$selectors_file);

    }

	// read params file into $_REQUEST only if returning from the edit form
	// (isset($_REQUEST['doctext'])) and the  params file exists and is valid
	public static function init_params()
	{
        if (isset($_COOKIE['params_file']) && ($_COOKIE['params_file'] != "") && isset($_REQUEST['doctext']))
        {
            print '<p>Getting request parameters from server file '.$_COOKIE['params_file'].'</p>';

            // clean out $_REQUEST
            foreach ($_REQUEST as $key => $value)
            {
                $_REQUEST[$key] = NULL;
            }
            
            $request_string = file_get_contents($_COOKIE['params_file']);
            $_REQUEST = unserialize($request_string);
        }
	}
	
    public static function process_form()
    {
		$search_query_root = 'select h.doc_id, d.dtl_seqno, h.title, d.synopsis, h.doc_class, h.issue_date, h.gpo, h.security, h.sys_code00 as sys0, h.sys_text00 as syst0, h.sys_code01 as sys1, h.sys_text01 as syst1, h.sys_code02 as sys2, h.sys_text02 as syst2, h.sys_code03 as sys3, h.sys_text03 as syst3, h.stand00 as stand0, s0.text as standt0, h.stand01 as stand1, s1.text as standt1, h.stand02 as stand2, s2.text as standt2, h.subjt00 as subjt0, h.subjt01 as subjt1, h.subjt02 as subjt2, h.topic_code00 as topic0, h.topic_text00 as topict0, h.topic_code01 as topic1, h.topic_text01 as topict1, h.first_page, h.last_page, h.note from headerb as h inner join dtl as d on h.doc_id = d.doc_id and ';
		
		/* sql code that selects the appropriate rows from the stand table to obtain the stand texts corresponding to the stand codes in headerb. This will be appended to the query because it does not narrow the selection of rows from headerb.	
		
				
		 */
		$stand_filter = ' left join stand as s0 on h.stand00 = s0.code left join stand as s1 on h.stand01 = s1.code left join stand as s2 on h.stand02 = s2.code ';
	
	
		
        print '<p>Hello '.$GLOBALS['user'].'. '.'<a href="https://reset:reset@'. $GLOBALS['CurrentUrl'] .'?Logout=1"><b>LOGOUT</b></a> ';

        $result = $GLOBALS['mysqli']->query("select doc_id from doc_edit_permissions where user='".$GLOBALS['user']."'");
        $dep_wildcards = array('*','?');
        $dep_wildcard_repls = array('.*','.');

        while ($data = $result->fetch_object())
        {
            $raw_pat = $data->doc_id;
            self::$patterns .= "'$raw_pat', ";
            $pat = str_replace($dep_wildcards,$dep_wildcard_repls,$raw_pat);
            array_push($GLOBALS['doc_edit_permissions'],$pat);
        }
        if (self::$patterns == '')
        {print "You may not edit anything.</p>\n";}
        else
        {
            self::$patterns = substr(self::$patterns,0,-2);
            print "You may edit documents with ids matching patterns: ".self::$patterns."</p>\n";
        }

        self::init_selectors();

        $invalid_fields = "";
        $doc_id_saved = "";
        $issue_date_saved = "";
        $title_saved = "";
        $synopsis_saved = "";
        $form_filled = false;
        $permidx = '';
        $tempidx = '';
        $regexp = '';
        $sql = $search_query_root;
		
		self::init_params();

        if (isset ($_REQUEST['permidx']))
        {
            $permidx = 'checked';
        }

        if (isset ($_REQUEST['tempidx']))
        {
            $tempidx = 'checked';
        }
        //At least one box must be checked.  The permanent index will be checked by default if the temporary index is not checked.
        if ($tempidx == '')
        {
            $permidx = 'checked';
        }
        //Because the temporary index contains only today's items, there is no need to narrow the query further, so the form is considered to be filled if the temporary index alone is checked
        if ($permidx == '' && $tempidx == 'checked')
        {$form_filled = true;}

        if (isset ($_REQUEST['regexp']))
        {
            $regexp = 'checked';
        }

        if ($regexp == 'checked') {$like_or_regexp = 'regexp';}
        else {$like_or_regexp = 'like';}

        if (isset ($_REQUEST['doc_id']) && $_REQUEST['doc_id'] != "")
        {
            $doc_id = trim($_REQUEST['doc_id']);
            $doc_id = strtoupper($doc_id);
            $doc_id_saved = $doc_id;
            // $doc_id_saved is used to pre-fill the form.
            if (self::valid_doc_id($doc_id, $like_or_regexp))
            {
                $sql .= 'h.doc_id '.$like_or_regexp.' "'.$doc_id.'" and '; 
                $form_filled = true;
            }
            else if ($doc_id != '')
            {$invalid_fields .= "doc_id: $doc_id_saved, ";}
        }

        if (isset ($_REQUEST['issue_date']) && $_REQUEST['issue_date'] != "")
        {
            printErr('issue_date set to "'.$_REQUEST['issue_date'].'"');
            $issue_date = trim($_REQUEST['issue_date']);
            $issue_date_saved = $issue_date;
            // $issue_date_saved is used to pre-fill the form.
            if (self::valid_issue_date($issue_date, $like_or_regexp))
            {
                $sql .= 'h.issue_date '.$like_or_regexp.' "'.$issue_date.'" and '; 
                $form_filled = true;
            }
            else if ($issue_date != '')
            {$invalid_fields .= "issue_date: $issue_date_saved, ";}
        }
        if (isset ($_REQUEST['title']) && $_REQUEST['title'] != "")
        {
            $title = trim($_REQUEST['title']);
            $title = strtoupper($title);
            $title_saved = $title;
            // $title_saved is used to pre-fill the form.
            $valid = true;
            if ($like_or_regexp == 'like')
            {
                $valid = process_wildcards($title,$invalid_fields,'title',35);
            }
            if ($valid)
            {
                if ($title != '')
                {
                    $sql .= 'h.title '.$like_or_regexp.' "'.$title.'" and ';
                    $form_filled = true;
                }
            }
        }
        if (isset ($_REQUEST['synopsis']) && $_REQUEST['synopsis'] != "")
        {
            $synopsis = trim($_REQUEST['synopsis']);
            $synopsis = strtoupper($synopsis);
            $synopsis_saved = $synopsis;
            // $synopsis_saved is used to pre-fill the form.
            $valid = true;
            if ($like_or_regexp == 'like')
            {
                $valid = process_wildcards($synopsis,$invalid_fields,'synopsis',65);
            }
            if ($valid)
            {
                if ($synopsis != '')
                {
                    $sql .= 'd.synopsis '.$like_or_regexp.' "'.$synopsis.'" and ';
                    $form_filled = true;
                }
            }
        }

        self::touch_selectors($form_filled,$sql);

        $first_rownum = 0;
        $max_rows = 1000;
        if (isset ($_REQUEST['first_rownum']))
        {
            $fr = trim($_REQUEST['first_rownum']);
            if (self::valid_first_rownum($fr))
            {$first_rownum = $fr;}
            else if ($fr != ''){$invalid_fields .= "number of rows of output to skip: $fr, ";}
        }
        if (isset ($_REQUEST['max_rows']))
        {
            $mr = trim($_REQUEST['max_rows']);
            if (self::valid_max_rows($mr))
            {$max_rows = $mr;}
            else if ($mr != ''){$invalid_fields .= "number of rows of output: $mr, ";}
        }
        if (strlen($sql) > strlen($search_query_root))
        {$sql = substr($sql,0,-5);} // remove final ' and '
        else
        {$sql .= '0';}

        self::$first_rownum_minus = $first_rownum - 1;
        self::$max_rows_plus = $max_rows + 2;
        if (self::$first_rownum_minus < 0)
        {self::$first_rownum_minus = 0; self::$max_rows_plus = $max_rows + 1;}

        $sql .= $stand_filter.'order by h.doc_id, d.dtl_seqno asc limit '.self::$first_rownum_minus.', '.self::$max_rows_plus;

        $sql_count = str_replace ('select h.doc_id','select count(distinct(h.doc_id))',$sql);
		// printErr ('sql_count: '.$sql_count);
        $sql2 = str_replace('headerb','tempb',$sql);
        $sql2 = str_replace(' dtl ',' dtlhld ',$sql2);
        $sql2_count = str_replace('headerb','tempb',$sql_count);
        $sql2_count = str_replace(' dtl ',' dtlhld ',$sql2_count);
        // A query returning the entire temporary index is acceptable
        $sql2_count = str_replace(' where 0',' where 1',$sql2_count);
        $sql2 = str_replace(' where 0',' where 1',$sql2);


        if ($permidx == 'checked')
        {
            print '<p class="query">Daybook permanent index query: '.$sql."</p>\n";
        }
        if ($tempidx == 'checked')
        {
            print '<p class="query">Daybook temporary index query: '.$sql2."</p>\n";
        }

        if (strlen($invalid_fields) > 2)
        {$invalid_fields = substr($invalid_fields,0,-2); print "<p class='warning'>invalid fields: $invalid_fields</p>\n";}
 
        if ($first_rownum == 0 && $max_rows == 1000 && $invalid_fields == "")
        {print "<p>By default, the first 1000 rows of data found will be shown.  If a different range is desired, enter the number of rows of data to be skipped before the 1000 that will be shown, if they exist, or enter a smaller \"max. number of rows of data\".</p>\n";
        } 
		
		if ($GLOBALS['user'] == 'GUEST')
		{$new_radio = "";}
		else
		{
           	$new_radio = '<div class="radio"><label class="radio" for="new">NEW DOCUMENT</label><input class="radio" type="radio" name="edit" id="new" value="new"></div>';
		}


        if ($form_filled)
        {
            $headers = "";

            if ($permidx == 'checked')
            {$query1_result = self::process_query($GLOBALS['mysqli'],$sql_count,$sql,$first_rownum);}

            if ($tempidx == 'checked')
            {$query2_result = self::process_query($GLOBALS['mysqli'],$sql2_count,$sql2,$first_rownum);}

            $no_edit_radio = "";
            if ($GLOBALS['edit'])
            {
                $no_edit_radio = '<div class="radio"><label class="radio" for="noedit">DON\'T EDIT</label><input class="radio" type="radio" name="edit" id="noedit" value="noedit"></div>';
            }


            if ($permidx == 'checked')
            {$headers .= "<p class=\"headersHeader\">Permanent index:</p>\n".$new_radio.$no_edit_radio.$query1_result;}
            if ($tempidx == 'checked')
            {$headers .= "<p class=\"headersHeader\">Temporary index:</p>\n".$new_radio.$no_edit_radio.$query2_result;}


        } // end if $form_filled == true
        else // form not filled
        {
            if ($invalid_fields != "")
            {
                print "<p class='warning'><b>Daybook query not submitted due to invalid fields</b></p>\n";
            }
            else
            {
                print "<p class='warning'><b>Form not filled; query too general.</b> Uncheck the permanent index and check the temporary index, or make a selection or enter text in one of the fields below the bar.</p>\n";
            }

            $headers = '<br /><br />'.$new_radio;
        }

        print Latin1toUTF8 ('<div style="text-align:left">
  <form action="https://'.$GLOBALS['CurrentUrl'].'" method="POST">
  
   <div class="short_text">
  <label for="first_rownum">rows of data to skip</label> <input type="text" class="form-text" length="12" name="first_rownum" id="first_rownum" value="'.$first_rownum.'" />
  </div>
  <div class="short_text">
  <label for="max_rows"> max. number of rows of data (min. 1, max. 1000)</label> <input type="text" class="form-text" length="12" name="max_rows" id="max_rows" value="'.$max_rows.'" />
  </div>
  <div class="short_text">
  <label for="permidx">Permanent index</label> <input type="checkbox" class="form-checkbox"  name="permidx" id="permidx" '.$permidx.' />
   <label for="tempidx">Temporary index</label> <input type="checkbox" class="form-checkbox"  name="tempidx" id="tempidx" '.$tempidx.' />
 
  </div>
  <hr />
 <p>In any of the fields below, enter a word or phrase to find headers that contain the word or phrase in the same field.  All fields are case-insensitive.  You may also select 1 or more items from each selection list.  To select multiple items from a list, hold down the Ctrl key while clicking each item. To deselect an item in the selection list, hold down the Ctrl key while clicking the item.  To deselect all items, click an item that has not been selected while not holding down the Ctrl key, then deselect that one item by holding down the Ctrl key while clicking it.<br /><b>Wildcards:</b><br />Applies only when NOT using <a href="https://mariadb.com/kb/en/regular-expressions-overview/" target="_blank">MariaDB regular expressions</a>, however, it is useful to note the pattern and length limits for specific fields below when constructing regular expressions for those fields.<br />To escape, precede each wildcard character that you wish to escape with a backslash, e.g. *\** matches any string with at least one asterisk.<br />* or % matches any string <b>(do not use this in the doc_id.)</b>  Will be converted to % in the query.<br />? matches any single character. Will be converted to _ in the query, but <b>do not use _ as a wildcard;</b> it will be converted to \_ in the query.<br /><b>doc_id</b> must be exactly 11 characters of form YYWWDUUUNNN where YY is the last 2 digits of the year, with A0-A9 for 2000-2009, B0-B9 for 2010-2019, etc; WW is the week (01-53), D is the day of the week (1-7), UUU is the username (3 characters), and NNN is the document number (3 characters). ? may substitute for any character.<br /><b>issue_date</b> must be 6 digits. * or % may expand to fill remaining digits; <b>do not use ? or put * or % before a digit in issue_date</b><br /><b>title</b> must be less than 36 characters.<br /><b>synopsis</b> must be less than 66 characters.
  </p>
<div class="short_text">
     <label for="tempidx">Use MariaDB regular expressions</label> <input type="checkbox" class="form-checkbox"  name="regexp" id="regexp" '.$regexp.' /><br />Uncheck to use wildcards<br /><a href="https://mariadb.com/kb/en/regular-expressions-overview/" target="_blank">MariaDB regular expression syntax</a>
</div>
  <div class="short_text">
  <label for="doc_id">doc_id</label><br /><input type="text" class="form-text" length="12" name="doc_id" id="doc_id" value="'.$doc_id_saved.'" />
  </div>
  <div class="short_text">
   <label for="issue_date">issue_date</label><br /><input type="text" class="form-text"  name="issue_date" id="issue_date" length="6" value="'.$issue_date_saved.'" />
  </div>
 <div class="long_text">
  <label for="title">title</label><br /><input type="text" class="form-text"  name="title" id="title" length="35" value="'.$title_saved.'" />
  </div>
  <div class="long_text">
  <label for="synopsis">synopsis</label><br /><input type="text" class="form-text"  name="synopsis" id="synopsis" length="65" value="'.$synopsis_saved.'" />
  </div>

  <div class="long_select">'.self::$class_selector.'</div>
 
  <div class="long_select">'.self::$system_selector.'</div>
  <div class="long_select">'.self::$topic_selector.'</div>
  <div class="long_select">'.self::$stand_selector.'</div>
  <div class="long_select"><b><a href="/site/subjt_codes.txt" target="_blank">SUBJT CODES<br />GUIDE</a></b><br />'.self::$subjt_selector.'</div>
 
 <div class="short_select">'.self::$gpo_selector.'</div>
 
 <div class="short_select">'.self::$security_selector.'</div>

<img alt="clear" class="clear" src="/site/1x16000-clear.gif">
  <input type="hidden" name="SessionEstablished" />	   
  <input type="submit" value="Submit" class="form-submit" />'.
                            $headers.
                            '</form>');

        // This will not clear the authentication cache, but
        // it will replace the "real" login data with bogus data
        print '<a href="https://reset:reset@'. $GLOBALS['CurrentUrl'] .'?Logout=1"><b>LOGOUT</b></a></div>';
  
    } // end process_form()

} // end class search_form
?>    

