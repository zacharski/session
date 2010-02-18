<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Log In</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<script type="text/javascript" src="calendarDateInput.js" />

<body>
<div id="contents">
<?php
  $name = $_POST['username'];

   echo "<p>Thanks for logging in, $name</p>\n";
?>
  <p><a href="search.php">Continue</a></p>
  </div>
</body>
</html>
