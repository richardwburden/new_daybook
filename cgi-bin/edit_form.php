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
static $edit_log_path = "";

public static function log_edit()
{
	self::$docpath = $_REQUEST['docpath'];
	self::$wdr = str_replace('\\','/',$GLOBALS['website_doc_root']);
	/* increment version number */
	$doc_version_offset = strrpos(self::$docpath,'.',-5) + 1;
	$version = substr(self::$docpath,$doc_version_offset,-4);
	$extension = substr(self::$docpath,-4);
	$version++;
	$prefix = substr(self::$docpath,0,$doc_version_offset);
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
public static function process_form()
{
print '<p>processing the edit form for '.$_REQUEST['edit'].'</p>';
self::$wdr = str_replace('\\','/',$GLOBALS['website_doc_root']);

self::$docpath = self::$wdr.$_REQUEST['edit'];
print '<p>document path: '.self::$docpath.'</p>';

self::$doctext = file_get_contents(mb_convert_encoding(self::$docpath,'UTF-8', 'ISO-8859-1'));
$doc_id_offset = strrpos($_REQUEST['edit'],'/') + 1;
self::$doc_id = substr ($_REQUEST['edit'], $doc_id_offset,8).substr ($_REQUEST['edit'], $doc_id_offset+9,3);

/* initialize the selectors with nothing selected, using the selection lists obtained from the database in search_form::process_form() */
search_form::init_selectors();

/* print '<pre>'."\n".'gpo_selector: '.search_form::$gpo_selector.
"\n".'class_selector: '.search_form::$class_selector."\n".'</pre>'."\n";
*/
/*
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'gpo_selector: '.search_form::$gpo_selector.
."\n".'</pre>'."\n";
*/

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
		switch ($name) {
		case 'issue_date': 
			self::$issue_date = $value;
			break;
		case 'title': 
			self::$title = $value;
			break;
		case 'doc_class': 
			$valueAttribute = 'value="'.$value.'"';
			self::$class_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$class_selector);
			break;
		case 'gpo': 
			$valueAttribute = 'value="'.$value.'"';
			self::$gpo_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$gpo_selector);
			break;
		case 'security': 
			$valueAttribute = 'value="'.$value.'"';
			self::$security_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$security_selector);
			break;
		case 'sys_code00': 
		case 'sys_code01': 
		case 'sys_code02': 
		case 'sys_code03': 
			$valueAttribute = 'value="'.$value.'"';
			self::$system_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$system_selector);
			break;
		case 'stand00': 
		case 'stand01': 
		case 'stand02': 
			$valueAttribute = 'value="'.$value.'"';
			self::$stand_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$stand_selector);
			break;
		case 'subjt00': 
		case 'subjt01': 
		case 'subjt02': 
			$valueAttribute = 'value="'.$value.'"';
			self::$subjt_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$subjt_selector);
			break;
		case 'topic00': 
		case 'topic01': 
			$valueAttribute = 'value="'.$value.'"';
			self::$topic_selector = str_replace($valueAttribute,			$valueAttribute.' selected',self::$topic_selector);
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