<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-Type" content="text/html" charset="ISO-8859-1">
	<title>Apply The Form</title>
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
		<h1>BANKRUPTCY APPLY</h1>
		<div class="back">
              <a href="home.html" style="color: white">HOME</a>
              <a href="logout.html" style="color:white">Logout</a>
          </div>
	</header>
<center>
<form action="" method="POST">
	<table>
		<tr>
	       <td><label>CUSTOMER ID</label></td>
	       <td><input type="number" name="customerid"></td>
	   </tr>
	    <tr>
	       <td><label>TYPE OF LOAN</label></td>
	       <td><input type="text" name="loan"></td>
	   </tr>
	   <tr>
	       <td><label>LOAN ID</label></td>
	       <td><input type="number" name="id"></td>
	   </tr>
	   <tr>
	       <td><label>LOAN AMOUNT</label></td>
	       <td><input type="number" name="amount"></td>
	    </tr>
	    <tr>
           <td><label>BANKRUPTCY REASON</label></td>
           <td><textarea cols="50" rows="5" name="reason"></textarea></td>
       </tr>
       <tr>
           <td><label>NEEDED DOCUMENTS</label></td><br>
       </tr>
       <tr>
       	<td>
       		
       	</td>
          <td>
           	<input type="radio" name="Aadhar">AADHAR CARD<br>
            <input type="radio" name="Passbook">BANK PASSBOOK<br>
            <input type="radio" name="Voter">VOTER ID<br>
            <input type="radio" name="Loan">LOAN DETAILS<br>
           </td>
        </tr>
         <tr>
             <td><input type="submit" name="APPLY" value="Apply" style="background-color: green"></td>
         </tr>
     </table>
</form>
</center>
</body>
</html>