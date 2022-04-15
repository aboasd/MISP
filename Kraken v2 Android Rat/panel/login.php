<?php
include_once "config.php";
	try {
	    $conn = new  PDO('mysql:host='.SERVER.';dbname='.DB, USER, PASSWORD);
	    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch(PDOException $e) {
	    header("Location:setdb.php");
	}
	if ((isset($_SESSION['panel_user'])))
	{
		session_start();
		echo "<script>window.location.replace('index.php');</script>";
	}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles/login.css" rel="stylesheet">
 <link rel="shortcut icon" href="/images/icon1.png" type="image/png">
<title>KRAKEN RAT</title>
</head>

<body style="background: url(images/back8.png);
background-repeat: repeat;
  background-size: auto;">

      <div id="login">
        <form class="form-3" action="login_data.php" method="post">
            <fieldset class="clearfix">
			<center><img src="images/logo4.png" width="160"></center><br>
                <p><input type="text" name="login" value="Username" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" ></p> 
                <p><input type="password" name="password" value="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" ></p>
                <p><input type="submit" value="LOG IN"></p>
            </fieldset>
        </form>
    </div> 
</body>
</html>