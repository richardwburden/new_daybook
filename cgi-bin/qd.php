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
</script>
</head>
<body>
<h2>Find daybook headers and files</h2>

<?php
session_start();
$GLOBALS['website_doc_root'] = 'E:\as';

function Latin1toUTF8 ($str)
{
	return mb_convert_encoding($str,'UTF-8','ISO-8859-1');
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
	$usr = strtolower ($_SERVER['PHP_AUTH_USER']);
	$pwd = $_SERVER['PHP_AUTH_PW'];
	
	if ($usr == '') {$usr = 'guest'; $pwd = ''; $_SERVER['PHP_AUTH_USER'] = 'guest'; $_SERVER['PHP_AUTH_PW'] = '';}

 	if ($usr == 'reset' && $pwd == 'reset' && isset($_GET['Logout'])){ 
        // reset is a special login for logout ;-)
        $Logout = true;
    }
	else
	{
		//ini_set('max_execution_time', 300);

		$mysqli = new mysqli("localhost", "root", "UbetrBabl2bkitup");
	/* check connection */
		if ($mysqli->connect_errno) {
    		printf("Connect failed: %s\n", $mysqli->connect_error);
	    	exit();
		}

		$usrquery = "select password from mysql.user where user='$usr'";
	
		// print("<p>authentication query: $usrquery</p>\n");
		$usrresult = $mysqli->query($usrquery);
		if (!$usrresult) {
    		printf("Query failed. Errormessage: %s\n", $mysqli->error);
		}
		else 
		{
			$row = $usrresult->fetch_row();
			if ($row !== NULL)
			{
				$dbpwd = $row[0];
				if ($dbpwd != '')
				{
					$hashquery = "select sha1(unhex(sha1('$pwd')))";
					$hashresult = $mysqli->query($hashquery);
					$row = $hashresult->fetch_row();
					$mysqli->close();
					$pwd = strtoupper('*'.$row[0]);
				}
				if ($pwd == $dbpwd)
				{
    	    		$LoginSuccessful = true;
    			}
				/* else  //for debugging; remove!
				{
					print("<p>Password hash is $dbpwd; the hash of what you entered is $pwd</p>\n");
				
				} */
			}
		}
	}
} 
 
if ($Logout){
 
    // The user clicked on "Logout"
setcookie('selectors_file',"");

//header('location: index.php');

    print 'You are now logged out.';
    print '<br/>';
    print '<a href="https://'.$CurrentUrl.'">Login again</a>';
}
else if ($LoginSuccessful)
{
	if (isset ($_REQUEST['edit']) && ($_REQUEST['edit'] != "noedit"))
	{
		print '<p>You have opened  '.$_REQUEST['edit'].' for editing</p>';
 
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
