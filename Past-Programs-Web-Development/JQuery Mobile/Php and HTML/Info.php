<!DOCTYPE HTML> 
<html>
<body> 

<?php

$Age = $_POST["age"];
$rate = $_POST["rate"];
$Gender = $_POST["gender"];
$Max = 0;

$Max = 208 - (0.7 * $Age);

echo  nl2br("Running Metrics \n");

echo"Gender: " , $Gender ,  nl2br("\n");

echo "Heart Rate: \n" , $rate ,  nl2br("\n");

echo "Max Heart Rate: " , $Max ,  nl2br("\n");


?>

</body>
</html>