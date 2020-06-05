<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<title>Login</title>
</head>
<body>
	<div class="d-flex justify-content-center">
	<div class="jumbotron">
  <h1 class="display-4">Depreciaiton Calculation System</h1>
 
<div style="text-align:center;"><br />
	<h2>Bank Manager Login</h2><br />
	<form action="login.php" method="post">
		<div class="form-group">
		<label for="username">username</label><br>
		<input type="text" name="username" required><br>
	</div>
	<div class="form-group">
		<label for="password">Password</label><br>
		<input type="password" name="password" required><br>
</div>
		<button type="submit" name="login_user">Submit</button><br>

		
	</form>
</div>	
</div>
</div>
</body>
</html>
<style type="text/css">
	body{
	padding-top: 50px;
}
</style>