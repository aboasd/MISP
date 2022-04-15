<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<?php  session_start(); header('Content-type: text/html; charset=utf-8');
$statusCode=false;
if (!(isset($_SESSION['panel_user'])))
{
	session_destroy();
	echo "<script>window.location.replace('login.php');</script>";
}else{

	if ($_SESSION['panel_status']!="Action"){
		session_destroy();
		echo "<script>window.location.replace('login.php');</script>";
	}else{
		$statusCode=true;
	}
}
if($statusCode){
include_once "config.php";
	try {
	    $conn = new  PDO('mysql:host='.SERVER.';dbname='.DB, USER, PASSWORD);
	    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch(PDOException $e) {
	    header("Location:setdb.php");
	}

?>
<html>
<head >
<title>KRAKEN RAT</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link href="styles/menu.css" rel="stylesheet"/>
<link href="styles/index.css" rel="stylesheet"/>
<link href="styles/btn.css" rel="stylesheet"/>
<link href="styles/modul_form.css" rel="stylesheet"/>
<link rel="stylesheet" href="styles/style.css"/>
<link href="styles/modul_form_log.css" rel="stylesheet"/>
<link href="styles/modul_form_set.css" rel="stylesheet"/>

<link rel="stylesheet" href="styles/fa_fa/csss/font-awesome.min.css">


<link rel="shortcut icon" href="/images/favicon2.png" type="image/png"/>


<script src="styles/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

<link href="styles/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="styles/bootstrap/css/style.css"/>
<script src="styles/bootstrap/js/bootstrap.min.js"></script>
<script src="js/alert.js"></script>
<script src="js/amrnb.js" defer></script>


</head>

 <body style="background: url(images/back8.png);
  background-repeat: repeat;
  background-size: auto;">

  <style>
  ::-webkit-scrollbar {
  width: 5px;
}

/* Track */
::-webkit-scrollbar-track {
  background: transparent; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
  </style>


<?php

include_once "application/utils/classUsersRights.php";
include_once "application/utils/utils.php";
include_once 'application/database/webSocket.php';
include_once "header.php";

$id = isset($_GET['cont']) ? $_GET['cont'] : "";
	if($id=="bots"){
		include_once "application/views/botstable.php";
	}elseif($id=="statistic"){
		include_once "application/views/statistic.php";
	}elseif($id=="cards"){
		include_once "application/views/cardstable.php";
	}elseif($id=="injections"){
		include_once "application/views/injections.php";
	}elseif($id=="maps"){
		include_once "application/views/maps.php";
	}elseif($id=="ws"){
		include_once "application/views/webSocket.php";
	}elseif($id=="files"){
		include_once "application/views/files.php";
	}elseif($id=="numbers"){
		include_once "application/views/dumpNumbers.php";
	}elseif($id=="commands"){
		include_once "application/views/commands.php";
	}elseif($id=="spam"){
		include_once "application/views/spam.php";
	}elseif($id=="settings"){
		include_once "application/views/settingsPanel.php";
	}elseif($id=="exit"){
		session_destroy();
			echo "<script>window.location.replace('login.php');</script>";
		exit;
	}else{
		echo "<script>window.location.replace('?cont=bots&page=1');</script>";
	}

	if($id == null)	echo "<script>window.location.replace('?cont=bots&page=1');</script>";
?>


</html>
<?php } ?>
