<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Search</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div id="contents">
  <h1>Search</h1>
  <p>For example, you can type 'movies', 'coffee', 'Mexican', or the name of a store like 'Starbucks</p>
  <form method="post" action="search.php">
    <label for="username">Search:</label>
    <input type="text" id="search" name="search" />
    <input type="submit" value="go" name="submit" />
  </form>
  
  <?php
  include "db_connect.php";
  if (isset($_POST['search']))
  {
  	$searchterm = $_POST['search'];

  	if ($searchterm == 'movies')
  	{
  		$query = "SELECT * FROM movies ORDER BY movie";
  
  		$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
   		echo "<table id=\"hor-minimalist-b\">\n<tr><th>Movie</th><th>Theater</th><tr>\n\n";
   		while($row = mysqli_fetch_array($result)) {
  			$movie = $row['movie'];
  			$theater = $row['theater'];
		  	echo "<tr><td  >$movie</td><td >$theater</td></tr>\n";
	    }
	    echo "</table>\n"; 
  	}
  	else
  	{
  		$query = "SELECT * FROM stores where name LIKE '%$searchterm%' OR type LIKE '%$searchterm' ORDER BY name";
  
  		$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
   		echo "<table id=\"hor-minimalist-b\">\n<tr><th>Name</th><th>Type</th><th>Address</th><tr>\n\n";
   		while($row = mysqli_fetch_array($result)) {
  			$name = $row['name'];
  			$type = $row['type'];
  			$address = $row['address'];

		  	echo "<tr><td  >$name</td><td >$type</td><td >$address</td></tr>\n";
	    }
	    echo "</table>\n"; 
  	}
  	
  }
  ?>
  <p>&nbsp;</p><p><a href="logout.php">logout</a></p>
  </div>
</body>
</html>