<html>
<head>
<title>Find daybook headers and files</title>
<style>
.long_text, .long_text input {clear:both;width:100%; float:none;}
.long_text {margin:5px}
.short_text {float:left; margin:5px}
.short_text input{max-width:200px;}
.long_select {float:left; margin:5px}
.long_select select {height:450px;}
.short_select {float:left; margin:5px}
.short_select select {height:130px}
input.form-submit{clear:both; float:none;font-size:200%}
input.form-checkbox{margin-right:20px}
hr {clear:both; width:100%; float:none}
textarea {width:100%}
p {clear:both}
.headersHeader{text-align:center;font-weight:bold}
h2 {text-align:center}
</style>
</head>
<body>
<h2>Find daybook headers and files</h2>
<?php // print "Get lost</body></html>"; exit();
$this_href = '/cgi-bin/query_daybook.php';

ini_set('max_execution_time', 300);

function normalize ($string) {
  $table = array(
		 '�'=>'S', '�'=>'s', '�'=>'Dj', 'd'=>'dj', '�'=>'Z', '�'=>'z', 'C'=>'C', 'c'=>'c', 'C'=>'C', 'c'=>'c',
		 '�'=>'A', '�'=>'A', '�'=>'A', '�'=>'A', '�'=>'A', '�'=>'A', '�'=>'A', '�'=>'C', '�'=>'E', '�'=>'E',
		 '�'=>'E', '�'=>'E', '�'=>'I', '�'=>'I', '�'=>'I', '�'=>'I', '�'=>'N', '�'=>'O', '�'=>'O', '�'=>'O',
		 '�'=>'O', '�'=>'O', '�'=>'O', '�'=>'U', '�'=>'U', '�'=>'U', '�'=>'U', '�'=>'Y', '�'=>'B', '�'=>'Ss',
		 '�'=>'a', '�'=>'a', '�'=>'a', '�'=>'a', '�'=>'a', '�'=>'a', '�'=>'a', '�'=>'c', '�'=>'e', '�'=>'e',
		 '�'=>'e', '�'=>'e', '�'=>'i', '�'=>'i', '�'=>'i', '�'=>'i', '�'=>'o', '�'=>'n', '�'=>'o', '�'=>'o',
		 '�'=>'o', '�'=>'o', '�'=>'o', '�'=>'o', '�'=>'u', '�'=>'u', '�'=>'u', '�'=>'y', '�'=>'y', '�'=>'b',
		 '�'=>'y', 'R'=>'R', 'r'=>'r',
		 );
   
  return strtr($string, $table);
}
function valid_issue_date (&$issue_date)
{
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
		if ($year > 80 && $year <= $current_year && $month > 0 
		&& $month < 13 && $day > 0 && $day < 32 && 
		!($day == 31 && in_array($month, $short_months)) && 
		!($day > 29 && $month == '02')) {$valid_date = true;}
		if (($year % 4 == 0) && $month == '02' && day == 29) {$valid_date = true;}
	}	
	return $valid_date;
}

function valid_doc_id (&$id)
{
	if ($id != '' && preg_match('/[89abcd?][?\d][012345?][\d?][1234567?][a-z_?]{3}[?\d]{3}/i',$id)) 
	{
		// no week 00; first week is 01
		if (substr($id,2,2 == '00')) {return false;}
		// maximum week is 53
		if ((substr($id,2,1) == '5') && (substr($id,3,1) > '3'))
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

function parray ($arr)
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

function find_latest_version_of_daybook_file ($id)
{
	$id = strtolower($id);
	$rootdir = 'E:\as\daybook_files\\';
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
function valid_first_rownum($num)
{
	if (is_numeric($num) && $num >= 0 && is_int($num + 0)) {return true;}
	else {return false;}
}
function valid_max_rows($num)
{
	if (is_numeric($num) && $num >= 1 && $num <= 1000 && is_int($num + 0)) {return true;}
	else {return false;}
}



function process_query ($mysqli,$sql_count,$sql,$first_rownum)
{
	$headers = "";
	// print "<p>process_query: count query: $sql_count</p>\n";
	$count_result =  $mysqli->query($sql_count);
	if (!$count_result) {
    	printf("Query failed. Errormessage: %s\n", $mysqli->error);
	}
	$row = $count_result->fetch_row();
	$count_msg = "<p>$row[0] headers found; ";

	$result = $mysqli->query($sql);
	if (!$result) {
    	printf("Query failed. Errormessage: %s\n", $mysqli->error);
	}
	else // query succeeded
	{
		print $count_msg.$result->num_rows.' headers shown after first '.	$first_rownum.' skipped.</p>'."\n";

		while ($data = $result->fetch_array())
		{
			$row = "";
			$i = 0;
			foreach ($data as $key => $value)
			{
				if (is_int($key)) {continue;}
				if ($key == 'doc_id')
				{
					$id = strtolower($value);
					$href = find_latest_version_of_daybook_file($id);
					if ($href)
					{
						$datum = '<b><a href="'.$href.'" target="_blank">'.$value.'</a></b> ';
					}
					else
					{
						$datum = '<b>'.$value.'</b>(file not found) ';
					}
				}
				else {$datum = $key.':'.$value.'; ';}
		
				$row .= $datum;
			}
			$row = substr($row,0,-2); //remove final '; '
			$headers .= '<p class="header">'.$row."</p>\n";
		}
	} // end query succeeded
	return $headers;
}






$mysqli = new mysqli("localhost", "guest", "", "");

/* check connection */
if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

if (!$mysqli->query("use ndaybook")) {
    printf("Errormessage: %s\n", $mysqli->error);
}

$gpo_selector = "";
$result = $mysqli->query("select distinct gpo from master order by gpo asc");
if (!$result) {
    printf("query to list gpos failed. Errormessage: %s\n", $mysqli->error);
}
else
{
$gpo_selector = '<label for="gpo">gpo</label><br /><select name="gpo[]" multiple class="form_select" id="gpo">'."\n";
while ($data = $result->fetch_object())
{
	$gpo_selector.= '<option value="'.$data->gpo.'">'.$data->gpo."</option>\n";
}
$gpo_selector .= "</select>\n";
}

$security_selector = "";
$result = $mysqli->query("select distinct security from master order by security asc");
if (!$result) {
    printf("query to list security levels failed. Errormessage: %s\n", $mysqli->error);
}
else
{
$security_selector = '<label for="security">security</label><br /><select name="security[]" multiple class="form_select" id="security">'."\n";
while ($data = $result->fetch_object())
{
	$security_selector.= '<option value="'.$data->security.'">'.$data->security."</option>\n";
}
$security_selector .= "</select>\n";
}

$class_selector = "";
$result = $mysqli->query("select * from class order by text asc");
if (!$result) {
    printf("Query to list document classes failed. Errormessage: %s\n", $mysqli->error);
}
else
{
$class_selector = '<label for="doc_class">doc_class</label><br /><select name="doc_class[]" multiple class="form_select" id="doc_class">'."\n";

while ($data = $result->fetch_object())
{
	$class_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
}
$class_selector .= "</select>\n";
}

$system_selector = "";
$result = $mysqli->query("select * from system order by text asc");
if (!$result) {
    printf("Query to list systems failed. Errormessage: %s\n", $mysqli->error);
}
else
{
$system_selector = '<label for="system">system</label><br /><select name="system[]" multiple class="form_select" id="system">'."\n";
while ($data = $result->fetch_object())
{
	$system_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
}
$system_selector .= "</select>\n";
}

$topic_selector = "";
$result = $mysqli->query("select * from topic order by text asc");
if (!$result) {
    printf("Query to list topics failed. Errormessage: %s\n", $mysqli->error);
}
else
{
$topic_selector = '<label for="topic">topic</label><br /><select name="topic[]" multiple class="form_select" id="topic">'."\n";
while ($data = $result->fetch_object())
{
	$topic_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
}
$topic_selector .= "</select>\n";
}

$stand_selector = "";
$result = $mysqli->query("select * from stand order by text asc");
if (!$result) {
    printf("Query to list stands failed: Errormessage: %s\n", $mysqli->error);
}
else
{
$stand_selector = '<label for="stand">stand</label><br /><select name="stand[]" multiple class="form_select" id="stand">'."\n";
while ($data = $result->fetch_object())
{
	$stand_selector.= '<option value="'.$data->code.'">'.$data->code.' '.$data->text."</option>\n";
}
$stand_selector .= "</select>\n";
}

$subjt_selector = "";
$result = $mysqli->query("select distinct subjt from dtl order by subjt asc");
if (!$result) {
    printf("Query to list subjts failed: Errormessage: %s\n", $mysqli->error);
}
else
{
$subjt_selector = '<label for="subjt">subjt</label><br /><select name="subjt[]" multiple class="form_select" id="subjt">'."\n";
while ($data = $result->fetch_object())
{
	$subjt_selector.= '<option value="'.$data->subjt.'">'.$data->subjt."</option>\n";
}
$subjt_selector .= "</select>\n";
}








$invalid_fields = "";
$doc_id_saved = "";
$issue_date_saved = "";
$title_saved = "";
$form_filled = false;
$permidx = '';
$tempidx = '';
$sql = 'select * from headerb where ';

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




if (isset ($_REQUEST['doc_id']))
{
	$doc_id_saved = $_REQUEST['doc_id'];
	$doc_id = trim($doc_id_saved);
	if (valid_doc_id($doc_id))
	{$sql .= 'doc_id like "'.$doc_id.'" and '; 
	$form_filled = true;}
	else if ($doc_id != ''){$invalid_fields .= "doc_id: $doc_id_saved, ";}
}
if (isset ($_REQUEST['doc_class']))
{
	$form_filled = true;
	$doc_class = $_REQUEST['doc_class'];
	foreach ($doc_class as $class)
	{
		$valueAttribute = 'value="'.$class.'"';
		$class_selector = str_replace($valueAttribute,$valueAttribute.' selected',$class_selector);
	}

//	$class_selector = preg_replace('/slct_[A-Z]+/s','',$class_selector);
	$sql .= 'doc_class in ('.parray($doc_class).') and ';
}
if (isset ($_REQUEST['gpo']))
{
	$form_filled = true;
	$gpo = $_REQUEST['gpo'];
	foreach ($gpo as $gpocode)
	{
		$valueAttribute = 'value="'.$gpocode.'"';
		$gpo_selector = str_replace($valueAttribute,$valueAttribute.' selected',$gpo_selector);
	}
	$sql .= 'gpo in ('.parray($gpo).') and ';
}
if (isset ($_REQUEST['issue_date']))
{
	$issue_date_saved = $_REQUEST['issue_date'];
	$issue_date = trim($issue_date_saved);
	if (valid_issue_date($issue_date))
	{$sql .= 'issue_date like "'.$issue_date.'" and '; 
	$form_filled = true;}
	else if ($issue_date != ''){$invalid_fields .= "issue_date: $issue_date_saved, ";}
}
if (isset ($_REQUEST['title']))
{
	$title_saved = $_REQUEST['title'];
	$title = trim($title_saved);
	$max_title_length = 35;
	// we assume that underscores are not intended to be wildcards,
	// so we escape them.
	$title = str_replace('_','\\_',$title);
	// question marks are assumed to be wildcards unless escaped.
	// if not escaped, they must be converted to the proper MariaDB
	// wildcard.
	$title = str_replace('\\?','\x0',$title);
	$title = str_replace('?','_',$title);
	$title = str_replace('\x0','?',$title);
	// asterisks are assumed to be wildcards unless escaped.
	// if not escaped, they must be converted to the proper MariaDB
	// wildcard.
	// percent signs will be treated as MariaDB treats them,
	// as wildcards unless escaped.
	$title = str_replace('\\*','\x0',$title);
	$title = str_replace('*','%',$title);
	$title = str_replace('\x0','*',$title);
	// the length returned by strlen counts backslashes used to 
	// escape characters in the query as characters.
	$max_title_length += substr_count($title,'\\%');
	$max_title_length += substr_count($title,'\\_');
	$title = strtoupper($title);
	if (strlen($title) > $max_title_length) {$invalid_fields .= "title: $title_saved, ";}
	else if ($title != '') {$sql .= 'title like "'.$title.'" and '; $form_filled = true;}
}
if (isset ($_REQUEST['security']))
{
	$form_filled = true;
	$security = $_REQUEST['security'];
	foreach ($security as $seccode)
	{
		$valueAttribute = 'value="'.$seccode.'"';
		$security_selector = str_replace($valueAttribute,$valueAttribute.' selected',$security_selector);
	}
	$sql .= 'security in ('.parray($security).') and ';
}
/*
if (isset ($_REQUEST['note']) && $_REQUEST['note'] != 2)
{
	$form_filled = true;
	$note = $_REQUEST['note'];
	$sql .= 'note =  '.$note.' and ';
}
*/
if (isset ($_REQUEST['system']))
{
	$form_filled = true;
	$system = $_REQUEST['system'];
	foreach ($system as $syscode)
	{
		$valueAttribute = 'value="'.$syscode.'"';
		$system_selector = str_replace($valueAttribute,$valueAttribute.' selected',$system_selector);
	}
	$sql .= '(sys_code00 in ('.parray($system).') or 
	sys_code01 in ('.parray($system).') or 
	sys_code02 in ('.parray($system).') or 
	sys_code03 in ('.parray($system).')) and ';
}

if (isset ($_REQUEST['stand']))
{
	$form_filled = true;
	$stand = $_REQUEST['stand'];
	foreach ($stand as $stcode)
	{
		$valueAttribute = 'value="'.$stcode.'"';
		$stand_selector = str_replace($valueAttribute,$valueAttribute.' selected',$stand_selector);
	}
	$sql .= '(stand00 in ('.parray($stand).') or 
	stand01 in ('.parray($stand).') or 
	stand02 in ('.parray($stand).')) and ';
}

if (isset ($_REQUEST['subjt']))
{
	$form_filled = true;
	$subjt = $_REQUEST['subjt'];
	foreach ($subjt as $subcode)
	{
		$valueAttribute = 'value="'.$subcode.'"';
		$subjt_selector = str_replace($valueAttribute,$valueAttribute.' selected',$subjt_selector);
	}
	$sql .= '(subjt00 in ('.parray($subjt).') or
	subjt01 in ('.parray($subjt).') or 
	subjt02 in ('.parray($subjt).')) and ';
}

if (isset ($_REQUEST['topic']))
{
	$form_filled = true;
	$topic = $_REQUEST['topic'];
	foreach ($topic as $tcode)
	{
		$valueAttribute = 'value="'.$tcode.'"';
		$topic_selector = str_replace($valueAttribute,$valueAttribute.' selected',$topic_selector);
	}
	$sql .= '(topic_code00 in ('.parray($topic).') or
	topic_code01 in ('.parray($topic).')) and ';
}
$first_rownum = 0;
$max_rows = 1000;
if (isset ($_REQUEST['first_rownum']))
{
	$fr = trim($_REQUEST['first_rownum']);
	if (valid_first_rownum($fr))
	{$first_rownum = $fr;}
	else if ($fr != ''){$invalid_fields .= "number of rows of output to skip: $fr, ";}
}
if (isset ($_REQUEST['max_rows']))
{
	$mr = trim($_REQUEST['max_rows']);
	if (valid_max_rows($mr))
	{$max_rows = $mr;}
	else if ($mr != ''){$invalid_fields .= "number of rows of output: $mr, ";}
}
if (strlen($sql) > strlen('select * from headerb where '))
{$sql = substr($sql,0,-5);} // remove final ' and '
else
{$sql .= '0';}
$sql_count = str_replace ('select *','select count(*)',$sql);
$sql .= ' order by doc_id asc limit '.$first_rownum.', '.$max_rows;
$sql2_count = str_replace('headerb','tempb',$sql_count);
$sql2 = str_replace('headerb','tempb',$sql);
// A query returning the entire temporary index is acceptable
$sql2_count = str_replace('select count(*) from tempb where 0','select count(*) from tempb where 1',$sql2_count);
$sql2 = str_replace('select * from tempb where 0','select * from tempb where 1',$sql2);


if ($permidx == 'checked')
{
	print '<p class="query">Permanent index query: '.$sql."</p>\n";
}
if ($tempidx == 'checked')
{
	print '<p class="query">Temporary index query: '.$sql2."</p>\n";
}
	if (strlen($invalid_fields) > 2)
 {$invalid_fields = substr($invalid_fields,0,-2); print "<p>invalid fields: $invalid_fields</p>\n";}
 
if ($first_rownum == 0 && $max_rows == 1000)
{print "<p>By default, the first 1000 headers found will be shown.  If a different range is desired, enter the number of headers to be skipped before the 1000 that will be shown, if they exist, or enter a smaller \"max. number of headers\".</p>\n";
} 

if ($form_filled)
{
$headers = "";
if ($permidx == 'checked')
{$headers .= "<p class=\"headersHeader\">Permanent index:</p>\n".process_query($mysqli,$sql_count,$sql,$first_rownum);}
if ($tempidx == 'checked')
{$headers .= "<p class=\"headersHeader\">Temporary index:</p>\n".process_query($mysqli,$sql2_count,$sql2,$first_rownum);}


} // end if $form_filled == true
else // form not filled
{
print "<p>Form not filled; query too general. Uncheck the permanent index and check the temporary index, or make a selection or enter text in one of the fields below the bar.</p>\n";

$headers = "";
/*$doc_id_saved = "";
$issue_date_saved = "";
$title_saved = ""; */
}
?>
<div style="text-align:left">
  <form action="<?php print $this_href; ?>" method="POST">
  
   <div class="short_text">
  <label for="first_rownum">headers to skip</label> <input type="text" class="form-text" length="12" name="first_rownum" id="first_rownum" value="<?php print $first_rownum; ?>" />
  </div>
  <div class="short_text">
  <label for="max_rows"> max. number of headers (min. 1, max. 1000)</label> <input type="text" class="form-text" length="12" name="max_rows" id="max_rows" value="<?php print $max_rows; ?>" />
  </div>
  <div class="short_text">
  <label for="permidx">Permanent index</label> <input type="checkbox" class="form-checkbox"  name="permidx" id="permidx" <?php print $permidx; ?> />
   <label for="tempidx">Temporary index</label> <input type="checkbox" class="form-checkbox"  name="tempidx" id="tempidx" <?php print $tempidx; ?> />
 
  </div>
  <hr />
 <p>In any of the fields below, enter a word or phrase to find headers that contain the word or phrase in the same field.  All fields are case-insensitive.  You may also select 1 or more items from each selection list.  To select multiple items from a list, hold down the Ctrl key while clicking each item. To deselect an item in the selection list, hold down the Ctrl key while clicking the item.  To deselect all items, click an item that has not been selected while not holding down the Ctrl key, then deselect that one item by holding down the Ctrl key while clicking it.<br /><b>Wildcards:</b><br />To escape, precede each wildcard character that you wish to escape with a backslash, e.g. *\** matches any string with at least one asterisk.<br />* or % matches any string (do not use this in the doc_id.)  Will be converted to % in the query.<br />? matches any single character. Will be converted to _ in the query.<br /><b>doc_id</b> must be exactly 11 characters of form YYWWDUUUNNN where YY is the last 2 digits of the year, with A0-A9 for 2000-2009, B0-B9 for 2010-2019, etc; WW is the week (01-53), D is the day of the week (1-7), UUU is the username (3 letters or 2 letters an an underscore), and NNN is the document number (3 digits). ? may substitute for any character.<br /><b>issue_date</b> must be 6 digits. * or % may expand to fill remaining digits<br /><b>title</b> must be less than 36 characters.
  </p>
  
  <div class="short_text">
  <label for="doc_id">doc_id</label><br /><input type="text" class="form-text" length="12" name="doc_id" id="doc_id" value="<?php print $doc_id_saved; ?>" />
  </div>
  <div class="short_text">
   <label for="issue_date">issue_date</label><br /><input type="text" class="form-text"  name="issue_date" id="issue_date" length="6" value="<?php print $issue_date_saved; ?>" />
  </div>
 <div class="long_text">
  <label for="title">title</label><br /><input type="text" class="form-text"  name="title" id="title" length="35" value="<?php print $title_saved; ?>" />
  </div>
 
  <div class="long_select">
 <?php print $class_selector; ?>
 </div>
 
  <div class="long_select">
   <?php print $system_selector; ?>
</div>
  <div class="long_select">
  <?php print $topic_selector; ?>
</div>
  <div class="long_select">
  <?php print $stand_selector; ?>
</div>
  <div class="long_select">
  <?php print $subjt_selector; ?>
</div>
 
 <div class="short_select">
  <?php print $gpo_selector; ?>
 </div>
 
 <div class="short_select">
     <?php print $security_selector; ?>
</div>
<!-- 
<div class="short_select">
<label for="note0">note</label><br />
 <input type="radio" name="note" id="note0" value="0" class="form_radio" />
  <label class="option" for="note0">0</label>
    <input type="radio" name="note" id="note1" value="1" class="form_radio" />
	  <label class="option" for="note1">1</label>
	  <input type="radio" name="note" id="note2" value="2" class="form_radio" />
	  <label class="option" for="note2">ignore</label>
</div>
-->
<img alt="clear" class="clear" src="/site/1x16000-clear.gif">	  
  <input type="submit" value="Submit" class="form-submit" />
  </form>
	  
 <?php print $headers; ?>
    
  
  </div>
</body>
</html>




