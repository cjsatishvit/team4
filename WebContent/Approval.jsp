<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approval page</title>
	
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
<form action="Approvalcheck" method="POST">
	<table>
		 <tr>
	       <td><label>LOAN OFFICER ID</label></td>
	       <td><input type="number" name="id"></td>
	   </tr>
		<tr>
	       <td><label>CUSTOMER ID</label></td>
	       <td><input type="number" name="customerid"></td>
	   </tr>
	    <tr>
           <td><label>BANKRUPTCY APPLY DETAILS</label></td>
           <td><textarea cols="50" rows="5" name="loan"></textarea></td>
       </tr>
       <tr>
           <td><label>STATUS CHECKING</label></td>
       	   <td>
       		<select name="choose">
       			<option value="correct">CORRECT</option>
       			<option value="Wrong">WRONG</option>
       		</select>
       	    </td>
        </tr>
        <tr>
           <td><label>REASON</label></td>
           <td><textarea cols="50" rows="5" name="reason"></textarea></td>
       </tr>
         <tr>
             <td><input type="submit" name="Reject" value="Reject" style="background-color: green"></td>
             <td><input type="submit" name="Approval" value="APPROVAL" style="background-color: blue"></td>
         </tr>
     </table>
</form>
</center>
</body>
</html>