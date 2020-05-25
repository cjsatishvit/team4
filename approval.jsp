<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aproval of bankruptcy</title>
	<style>
		.back{
			text-align: right;
			color: white;
			padding: 30px: 
		}
		h1{
			color: white;
		}
		H2{
			color: red;
		}
	</style>	

</head>
<body>
	
	<header style="background-color: black">
		<h1>APPROVAL OF BANKRUPTCY</h1>
		<h2>CREDIT CARD LOANS</h2>
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
	       <td><label>LOAN ID</label></td>
	       <td><input type="number" name="id"></td>
	   </tr>
		<tr>
	       <td><label>CUSTOMER ID</label></td>
	       <td><input type="number" name="customerid"></td>
	   </tr>
	    <tr>
           <td><label>LOAN DETAILS</label></td>
           <td><textarea cols="50" rows="5" name="reason"></textarea></td>
       </tr>
       <tr>
           <td><label>VERIFICATION OF LEGAL DOCUMENTS</label></td>
       	   <td>
       		<select>
       			<option name="correct">CORRECT</option>
       			<option name="Wrong">WRONG</option>
       		</select>
       	    </td>
        </tr>
        <tr>
           <td><label>REASON OF APPROVAL/REJECTION</label></td>
           <td><textarea cols="50" rows="5" name="reason"></textarea></td>
       </tr>
         <tr>
             <td><br><input type="submit" name="reject" value="REJECTION" style="background-color: green"></br></td>
             <td><br><input type="submit" name="Approval" value="APPROVAL" style="background-color: blue"></br></td>
         </tr>
     </table>
</form>
</center>

</body>
</html>


          
          



