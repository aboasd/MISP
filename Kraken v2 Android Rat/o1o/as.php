<?php
$a = $_REQUEST;
$b = $_GET;
$c = $_POST;

if(count($a) == 0 && count($b) == 0 && count($c) == 0)
{
	header("HTTP/1.1 404 Not Found");
	die(@"
No input file specified.
");
}

else 
{
	die("ok");
}

?>