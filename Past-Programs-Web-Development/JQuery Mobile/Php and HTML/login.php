<!DOCTYPE HTML> 
<html>
<body> 

<?php


$password = $_GET["pass"];
$username = $_GET["username"];

if($username == "BeastTTU"  and $password == "M@rvel")
{
	echo  nl2br("Login Successful \n");
}
else
{
	echo  nl2br("You have FAILED!!!!! \n");
}

?>

</body>
</html>