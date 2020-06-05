<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Page</title>
<style>
.back {
	text-align: right;
	color: white;
	padding: 30px:
}

h1 {
	color: white;
}
</style>
</head>
<body>
	<header style="background-color: black">
		<h1>BANKRUPTCY APPLY</h1>
		<div class="back">
			<a href="home.html" style="color: white">HOME</a> <a
				href="logout.html" style="color: white">Logout</a>
		</div>
	</header>
	<center>
		<form action="ApplyCheck1" method="POST">
			<table>
				<tr>
					<td><label>CUSTOMER ID</label></td>
					<td><input type="number" name="Custid"></td>
				</tr>
				<tr>
					<td><label>TYPE OF LOAN</label></td>
					<td><input type="text" name="Type"></td>
				</tr>
				<tr>
					<td><label>LOAN ID</label></td>
					<td><input type="number" name="Loanid"></td>
				</tr>
				<tr>
					<td><label>LOAN AMOUNT</label></td>
					<td><input type="number" name="Amount"></td>
				</tr>
				<tr>
					<td><label>BANKRUPTCY REASON</label></td>
					<td><textarea cols="50" rows="5" name="Reason"></textarea></td>
				</tr>
				<tr>
					<td><label>AADHAR NO</label></td>
					<td><input type="number" name="Aadharno"></td>
				</tr>
				<tr>
				    <td><label>ACCOUNT NO</label></td>
					<td><input type="number" name="Accountno"></td>
				</tr>
				<tr>
					<td><input type="submit" name="APPLY" value="Apply"
						style="background-color: green"></td>
				</tr>
			</table>
		</form>
	</center> 
</body>
</html>