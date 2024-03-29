<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Find daybook headers and files</title>
<style>
body {font-size:16px; font-family:"Times New Roman", Times, serif;}
.long_text, .long_text input {clear:both;width:100%; float:none;}
.long_text {margin:5px}
.short_text {float:left; margin:5px}
.short_text input{max-width:200px;}
select {font-family:"Courier New", Courier, monospace; font-size:14px}
.long_select {float:left; margin:5px}
.long_select select {height:450px;}
.short_select {float:left; margin:5px}
.short_select select {height:130px}
.form-submit{clear:both; float:none;font-size:200%}
input.form-checkbox{margin-right:20px}
div.radio {clear:none; display:inline; margin:0 2px 0 4px; padding:2px 4px; font-weight:bold; background-color:black; color:white;}

hr {clear:both; width:100%; float:none}
textarea {width:100%}
p {clear:both}
div.header {clear:both;margin:1em 0;line-height:120%}
div.link, div.data {clear:none; display:inline}
div.logout {clear:none; display:inline; margin:0 0 0 12px;  font-weight:bold;}

.headersHeader{text-align:center;font-weight:bold}
h2 {text-align:center}
.warning {color:#CC0000;font-weight:bold}
.error, .errbar {color:#FF6600; background-color:black; font-weight:bold}
                 .errbar {padding: 3pt 0; text-align:center}
                 .highlight {background-color:yellow}

</style>
<script type="text/javascript" src="/site/js/jquery-1.11.3.min.js">
	</script>
<script type="text/javascript">
function getSelectedDocData(doc_id)
{
	/* remove previous selection, if any, so that only one document can be edited at a time */
	$('#selectedDocData').remove();
	
	/* make selection */
	var id = '#edit'+doc_id;
	var radio = $(id);
	var header = radio.parent().parent();
	var data = header.children('.data');
	var hiddenDataTag = $('<input type="hidden" name="selectedDocData" id="selectedDocData" value="'+data.prop('innerText')+'">');
	radio.after(hiddenDataTag);
}
$(document).ready(function() {

          var last_valid_selection = null;

          $('select[multiple]').change(function(event) {
		  
		    // get the id of the select tag
		  	var selector_id = $(this).attr('id');

			/* check the number of selections only if a tag X with id selector_X exists where X is the id of the select tag.  The value attribute of tag X is the maximum number of selections
			 */
			var matches = $('#selector_' + selector_id);
			if (matches.length > 0)
			{
		  		var limit = matches.eq(0).val();
            	if ($(this).val().length > limit) 
				{
							alert("limit exceeded");

              		$(this).val(last_valid_selection);
            	}
				else
				{
				    last_valid_selection = $(this).val();
				} 
			}

          });
        });

</script>
</head>
<body>
<h2>Find daybook headers and files</h2>

<?php
session_start();
$GLOBALS['website_doc_root'] = 'E:\as';
$GLOBALS['wdr'] = 'E:/as';
$GLOBALS['daybook_files_dir'] = 'E:/as/daybook_files';
// end of line when writing to a file (operating system dependent)
$GLOBALS['file_eol'] = "\r\n";
date_default_timezone_set('America/New_York');

function Latin1toUTF8 ($str)
{
	return mb_convert_encoding($str,'UTF-8','ISO-8859-1');
}
function printErr($str)
{
	print '<p class="error">'.$str.'</p>'."\n";
}

function init_user($user = NULL)
{
        if ($user === NULL)
        {
            $GLOBALS['user'] = strtoupper($_SERVER['PHP_AUTH_USER']);
            $GLOBALS['usr'] = strtolower($_SERVER['PHP_AUTH_USER']);
        }
        else
        {
			$GLOBALS['user'] = strtoupper($user);
			$GLOBALS['usr'] = strtolower($user);
		}
		if  ($GLOBALS['usr'] == '')
		{
			$GLOBALS['user'] = 'GUEST';
			$GLOBALS['usr'] = 'guest';
			$_SERVER['PHP_AUTH_PW'] = '';
		}
}
// use this function to disable non-guest logins.
function init_guest()
{
    // exception for user 'reset' allows logout.
    if ($_SERVER['PHP_AUTH_USER'] != 'reset' || $_SERVER['PHP_AUTH_PW'] != 'reset' || isset($_GET['Logout']) === false)
    {
        $GLOBALS['user'] = 'GUEST';
        $GLOBALS['usr'] = 'guest';
        $_SERVER['PHP_AUTH_PW'] = '';
        $_SERVER['PHP_AUTH_USER'] = 'guest';
    }
    else
    {
        $GLOBALS['usr'] = 'reset';
    }
}

function init_db_session($user = NULL)
{
    //init_user($user);
    init_guest();
        $GLOBALS['doc_edit_permissions'] = array();
        $GLOBALS['edit'] = false;  //true if headers found which the user has permission to edit

        $pwd = $_SERVER['PHP_AUTH_PW'];

        ini_set('max_execution_time', 300);


        $GLOBALS['mysqli'] = new mysqli("localhost", $GLOBALS['usr'], $pwd);

        /* check connection */
        if ($GLOBALS['mysqli']->connect_errno) {
            printf("Connect failed: %s\n", $GLOBALS['mysqli']->connect_error);
            exit();
        }

        if (!$GLOBALS['mysqli']->query("use ndaybook")) {
            printf("Errormessage: %s\n", $GLOBALS['mysqli']->error);
        }

}
function process_wildcards(&$expr, &$invalid_fields, $field_name, $maxLen = 0)
{
    $expr_saved = $expr;
    
    // we assume that underscores are not intended to be wildcards,
    // so we escape them.
    $s = str_replace('_','\\_',$expr);
    // question marks are assumed to be wildcards unless escaped.
    // if not escaped, they must be converted to the proper MariaDB
    // wildcard.
    $s = str_replace('\\?','\x0',$s);
    $s = str_replace('?','_',$s);
    $s = str_replace('\x0','?',$s);
    // asterisks are assumed to be wildcards unless escaped.
    // if not escaped, they must be converted to the proper MariaDB
    // wildcard.
    // percent signs will be treated as MariaDB treats them,
    // as wildcards unless escaped.
    $s = str_replace('\\*','\x0',$s);
    $s = str_replace('*','%',$s);
    $s = str_replace('\x0','*',$s);
    // the length returned by strlen counts backslashes used to 
    // escape characters in the query as characters.
    $maxLen += substr_count($s,'\\%');
    $maxLen += substr_count($s,'\\_');
    $sLen = strlen($s);
    if ($maxLen > 0 && $sLen > $maxLen)
    {
        $invalid_fields .= "$field_name: $expr_saved [$sLen chars.;too long], ";
        return false;
    }
    $expr = $s;
    return true;
}


include "search_form.php";

include "edit_form.php";

/************** SCRIPT ENTRY POINT ************************/
// The full url to this file is required for 
// the Logout function
$CurrentUrl         = '62u-wi7-rwb/cgi-bin/qd.php';

// Status flags:
$LoginSuccessful    = false;
$Logout             = false;
 
// Check username and password:
if (isset($_SERVER['PHP_AUTH_USER']) && isset($_SERVER['PHP_AUTH_PW'])){
    //	init_user();
    init_guest();
	$pwd = $_SERVER['PHP_AUTH_PW'];
	
 	if ($usr == 'reset' && $pwd == 'reset' && isset($_GET['Logout'])){ 
        // reset is a special login for logout ;-)
        $Logout = true;
    }
	else
	{
		ini_set('max_execution_time', 300);

		$GLOBALS['mysqli'] = new mysqli("localhost", "root", "/");
	/* check connection */
		if ($GLOBALS['mysqli']->connect_errno) {
    		printf("Connect failed: %s\n", $GLOBALS['mysqli']->connect_error);
	    	exit();
		}

		$usrquery = "select authentication_string from mysql.user where user='$usr'";
	
		// print("<p>authentication query: $usrquery</p>\n");
		$usrresult = $GLOBALS['mysqli']->query($usrquery);
		if (!$usrresult) {
    		printf("Query failed. Errormessage: %s\n", $GLOBALS['mysqli']->error);
		}
		else 
		{
			$row = $usrresult->fetch_row();
			if ($row !== NULL)
			{
				$dbpwd = $row[0];
				if ($dbpwd != '')
				{
					$hashquery = "select password('$pwd')";
					$hashresult = $GLOBALS['mysqli']->query($hashquery);
					$row = $hashresult->fetch_row();
					$GLOBALS['mysqli']->close();
                    $pwd = $row[0];
					// $pwd = strtoupper('*'.$row[0]);
				}
				if ($pwd == $dbpwd)
				{
    	    		$LoginSuccessful = true;
    			}
                /*
				 else  //for debugging; remove!
				{
					print("<p>Password hash is $dbpwd; the hash of what you entered is $pwd</p>\n");
                    exit;
				} 
                */
			}
		}
	}
} 
 
if ($Logout){
 
    // The user clicked on "Logout"
setcookie('selectors_file',"");
setcookie('params_file',"");
setcookie('sc_file',"");

//header('location: index.php');

    print 'You are now logged out.';
    print '<br/>';
    print '<a href="https://'.$CurrentUrl.'">Login again</a>';
}
else if ($LoginSuccessful)
{
	init_db_session();
	if (isset ($_REQUEST['edit']) && ($_REQUEST['edit'] != "noedit"))
	{
        if ($_REQUEST['edit'] != "new")
		{print '<p>You have opened  '.$_REQUEST['edit'].' for editing</p>';}
 
	 /* open document for editing */
		edit_form::process_form();
	}
	else
	{
		if (isset ($_REQUEST['doctext']))
		{
			edit_form::log_edit();
		}
		search_form::process_form();
	}
}
else {
 
    /* 
    ** The user gets here if:
    ** 
    ** 1. The user entered incorrect login data (three times)
    **     --> User will see the error message from below
    **
    ** 2. Or the user requested the page for the first time
    **     --> Then the 401 headers apply and the "login box" will
    **         be shown
    */
 
    // The text inside the realm section will be visible for the 
    // user in the login box
    header('WWW-Authenticate: Basic realm="Top-secret area"');
    header('HTTP/1.0 401 Unauthorized');
 
    // Error message
    print "Sorry, login failed!\n";
    print "<br/>";
    print '<a href="https://' . $CurrentUrl . '">Try again</a>';
 
}

?>    
</body>
</html>
