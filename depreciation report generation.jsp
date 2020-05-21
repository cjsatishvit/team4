<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Depriciation report page</title>
	
	<style>
		.back{
			text-align: right;
			color: white;
			padding: 30px: 
		}
		h1{
			color: white;
		}
	</style>
</head>
<body>
	<header style="background-color: black">
		<h1>LOAN OFFICER APPROVAL</h1>
		<div class="back">
              <a href="home.html" style="color: white">HOME</a>
              <a href="logout.html" style="color:white">Logout</a>
          </div>
	</header>
<center>
<form action="" method="POST">
	<table>
		 <tr>
	       <td><label>DATE RANGE</label></td>
	       <td><input type="range" name="id"></td>
	   </tr>
		<tr>
	       <td><label>MANAGER ID</label></td>
	       <td><input type="number" name="customerid"></td>
	</tr>
	</table>
</form>
</center>
</body>
</html>