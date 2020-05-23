<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">>
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
		h2{
			color: white;
		}
	</style>
</head>
<body>
	<header style="background-color: black">
		<h1>LOAN STATUS</h1>
		<h2>BANKRUPTCY PERMISSION</h2>
		<div class="back">
              <a href="home.html" style="color: white">HOME</a>
              <a href="logout.html" style="color:white">Logout</a>
          </div>
	</header>
<center>
<form action="" method="POST">
	<table>
		<tr>
	       <td><label>NAME</label></td>
	       <td><input type="text" name="name"></td>
	    </tr>
	    <tr>
	       <td><label>CUSTOMER ID</label></td>
	       <td><input type="number" name="customer"></td>
	    </tr>
	    <tr>
	       <td><label>LOAN AMOUNT TO BE PAID</label></td>
	       <td><input type="number" name="amount"></td>
	   </tr>
	   <tr>
	       <td><label>LOAN ID</label></td>
	       <td><input type="number" name="id"></td>
	   </tr>
	   <tr>
	       <td><label>MONTHLY INCOME</label></td>
	       <td><input type="number" name="income"></td>
	    </tr>
	    <tr>
	       <td><label>ORIGINAL ADDRESS</label></td>
	       <td><input type="text" name="address"></td>
	    </tr>
	    <tr>
           <td><label>REASON FOR BANKRUPTCY</label></td>
           <td><textarea cols="50" rows="5" name="reason"></textarea></td>
       </tr>
       <tr>
           <td><label>AADHAR NO.</label></td><br>
           <td><input type="number" name="aadhar"></td>
       </tr>
       <tr>
	       <td><label>BANKRUPTCY LEGAL PROOF</label></td>
	       <td><input type="file" name="proof" placeholder="choose file"></td>
	    </tr>
       
       <tr>
             <td><br><input type="submit" name="APPLY" value="Apply" style="background-color: green"></br></td>
       </tr>
       <tr>
       		<td><label><br><br>Your permission status will be sent to your email within 30 working days </br></br></label></td>
       
     </table>
</form>
</center>

</body>
</html>