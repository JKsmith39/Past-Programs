<!DOCTYPE HTML> 
<html>
<body> 

<?php

$Val1 = $_GET["numOne"];
$Val2 = $_GET["numTwo"];
$Sum = 0;

$Sum = $Val1 + $Val2;
echo "The sum of the numbers is: " , $Sum;

?>

</body>
</html>