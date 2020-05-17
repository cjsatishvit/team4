<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Deceased Credit Card Loans</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Logout</a></li>
    </ul>
  </div>
</nav>
<br>
<br>
<div class = "container">
	<div class = "row">
		<div class = "col-md-1">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-11">
			<div class = "customDiv"><h3><b>For Viewing Borrower and their Deceased status -></b></h3></div>
		</div>
	</div>
	<br>
	<div class = "row">
		<div class= "col-md-2">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-10">
			<a href="deceaseStatus.jsp"class = "btn btn-primary"> VIEW STATUS </a>		
		</div>
	</div>
	<br>
	<div class = "row">
		<div class = "col-md-1">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-11">
			<div class = "customDiv"><h3><b>For Updating Borrower details in case of Demise of Existing Borrower -></b></h3></div>
		</div>
	</div>
	<br>
	<div class = "row">
		<div class= "col-md-2">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-10">
			<a href="#"class = "btn btn-primary"> UPDATE BORROWER </a>		
		</div>
	</div>
	<br>
	<div class = "row">
		<div class = "col-md-1">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-11">
			<div class = "customDiv"><h3><b>For Updating Viewing Status Report of Loan Recovery -></b></h3></div>
		</div>
	</div>
	<br>
	<div class = "row">
		<div class= "col-md-2">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-10">
			<a href="loanStatus.jsp"class = "btn btn-primary"> DECEASED LOAN REPORT </a>		
		</div>
	</div>
	<br>
	
</div>
</body>
</html>