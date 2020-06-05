<?php  

session_start();

//initializing variable

$username = "";
$email = "";

$error = array();

//connect to db

$db = mysqli_connect('localhost','root','','practice') or die("could not find the database");

//register user
if (isset($_POST['reg_user'])) {
$username = mysqli_real_escape_string($db, $_POST['username']);

$email = mysqli_real_escape_string($db, $_POST['email']);

$password = mysqli_real_escape_string($db, $_POST['password']);

$confirmPassword = mysqli_real_escape_string($db, $_POST['confirmPassword']);

//form validation

if(empty($username)){
	array_push($error, "username is required");
}

if(empty($email)){
	array_push($error, "email is required");
}

if(empty($password)){
	array_push($error, "password is required");
}

if(empty($confirmPassword)){
	array_push($error, "Confirm Password is required");
}

if($password != $confirmPassword){
	array_push($error, "Confirm password does not match");
}

//check db for existing user with same username
$resulttest = array();
$user_check_query = "SELECT * FROM user WHERE username = '$username' or email = '$email' LIMIT 1";
$results = mysqli_query($db, $user_check_query) ;
$user = mysqli_fetch_assoc($results);

if($user){
	if ($user['username'] === $username) {
		array_push($error, 'username already exist');
	}

	if ($user['email'] === $email){
		array_push($error, 'email already exist');
	}
}

//register user if no error

if (count($error) == 0) {
	
	$password_increp = md5($password); //this will incrept password

	$query = "INSERT INTO user (username, email, password) VALUES ('$username', '$email', '$password_increp')";

	mysqli_query($db,$query);
	$_SESSION['username'] = $username;
	$_SESSION['success'] = "you are logged in";

	header("location: dateSelect.php");
}

}

//login user

if (isset($_POST['login_user'])) {
	$username = mysqli_real_escape_string($db, $_POST['username']);
	$password = mysqli_real_escape_string($db, $_POST['password']);

	if (empty($username)) {
		array_push($error, 'username is required');

	}

	if (empty($password)) {
		array_push($error, 'Password is required');
	}

	if (count($error) ==  0) {
		$password = md5($password);

		$query = "SELECT * FROM user WHERE username = '$username' AND password = '$password' ";
		$results = mysqli_query($db, $query);

		if (mysqli_num_rows($results)) {
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "login in successfully";
			header('Location: dateSelect.php');
			//header("location: index.php");
		}else{
			array_push($error, "wrong username/password combination, please try again");
		}


	}


}


?>
<style type="text/css">
	body{
	padding-top: 50px;
}
</style>