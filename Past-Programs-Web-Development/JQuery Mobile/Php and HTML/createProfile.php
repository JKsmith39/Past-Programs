<!DOCTYPE html>
<html>
<head>
  <!-- Include meta tag to ensure proper rendering and touch zooming -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Include jQuery Mobile stylesheets -->
  <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
  <!-- Include the jQuery library -->
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- Include the jQuery Mobile library -->
  <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>
 <div data-role="page" class="ui-content">
	  <div data-role="header">
	  <h1>DF11 Clan</h1>
	  </div>
	  <div data-role="main">
	   <div data-role="navbar">
		<ul>
		  <li><a href="JKAssign4.html" class="ui-btn" data-transition="flip" data-icon="home">Home</a></li>
		  <li><a href="Insertpg.html" class="ui-btn" data-transition="flip" data-icon="user">Create Profiles</a></li>
		  <li><a href="ViewGamers.php" class="ui-btn" data-transition="flip" data-icon="info">View Profiles</a></li>
		</ul>
	  </div>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "DF11_Clan";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

// sql to create table
$sql = "CREATE TABLE students(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50)
)";

if ($conn->query($sql) === TRUE) {
    echo "Table students created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>

</div>
	<div data-role="footer">
	  <p>Copyright &copy; Ghosteye</p>
	  <p>Author: Jk Smith</p>
	</div>
</div>
</body>
</html>