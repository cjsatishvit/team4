<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<!-- 
########
#-BODY-# 
########
-->

<body>

	<!-- 
	##########
	#-NAVBAR-# 
	##########
	-->

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand">Bidder Registration</a>
			<!-- Links -->
	  	<ul class="nav navbar-nav ml-auto">
	  	<li class="nav-item">
	      <a class="nav-link" href="/trial_2/auction" style="color: white;">Auction Notification</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Home</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Logout</a>
	    </li>
		</ul>
	</nav>
	
	<!-- 
	########
	#-FORM-# 
	########
	-->
	
	<div class="container-fluid" style="background-color:#FFFFFF; max-width:900px">
		<label class="control-label col-sm-7" style="margin-top: 70px;margin-left: 135px">
			<h2><b>Bidder Registration</b></h2>
		</label>
		<form class="was-validated needs-validation" name = "form1" action="sub">
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="firstname"><b>First Name:</b></label>
		    <div class="col-sm-10">
		    	<input type="text" pattern = "[A-Za-z]*" class="form-control" name="first name" placeholder="Enter First Name" oninvalid="setCustomValidity('Only Letters')" oninput="setCustomValidity('')" required>
		    </div>
		  </div>
		  <div class="form-group row">
			<label class="col-sm-2 col-form-label" for="lastname"><b>Last Name:</b></label>
		    <div class="col-sm-10">
		    	<input type="text" pattern = "[A-Za-z]*" class="form-control" name="last name" placeholder="Enter Last Name" oninvalid="setCustomValidity('Only Letters')" oninput="setCustomValidity('')" required>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="email"><b>Email:</b></label>
		    <div class="col-sm-10">
		    	<input type="email" class="form-control" name="email" placeholder="Enter email" required>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="phone"><b>Mobile No.</b></label>
		    <div class="col-sm-10">
		    	<input type="tel" pattern = "[0-9]*" class="form-control" name="phone" placeholder="Enter Phone Number" oninvalid="this.setCustomValidity('Enter only numbers')" oninput="setCustomValidity('')" title = "Example: 9999999999" required>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="pan"><b>PAN Number</b></label>
		    <div class="col-sm-10">
		    	<input type="text" pattern = "[A-Z]{5}[0-9]{4}[A-Z]{1}" class="form-control" name="pan" placeholder="Enter PAN Number" oninvalid="this.setCustomValidity('Incorrect PAN Number')" oninput="setCustomValidity('')" title = "Example: AAAAA1234A" required>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="aadhar"><b>Aadhar:</b></label>
		    <div class="col-sm-10">
		    	<input type="text" pattern = "^\d{4}\s\d{4}\s\d{4}$" class="form-control" id ="aadhar" name="aadhar" placeholder="Enter Aadhar Number in 0000 0000 0000 format" oninvalid="this.setCustomValidity('Incorrect Aadhar Number')" oninput="setCustomValidity('')" title = "Example: 0000 0000 0000" required>
		    </div>
		  </div>
		  <script>
			document.getElementById('aadhar').addEventListener('input', function (e) {
		  	e.target.value = e.target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
			});
		  </script>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="address"><b>Address:</b></label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" name="address" placeholder="Enter Address"required>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-sm-2 col-form-label" for="dob"><b>Date of Birth:</b></label>
		    <div class="col-sm-10">
		    	<input type="text" pattern = "^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/(19[0-8][0-9]|199[0-9]|20[01][0-9]|2020)$" class="form-control" name="Dob" placeholder="Enter in  format dd/MM/yyyy " oninvalid="this.setCustomValidity('Incorrect date or format')" oninput="setCustomValidity('')" title = "Example: 01/02/2003"required>
		    </div>
		  </div>
		  <!-- Buttons -->
		  <div class="form-group">
		    <div class="col-sm-8 offset-sm-6">
		      <button type="submit" class="btn btn-primary btn-lg">Submit</button>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-8 offset-sm-6" style = "margin-left: 446px;">
		      <button type="button" class="btn btn-danger">Cancel</button>
		    </div>
		  </div>
		</form>
	</div>
</body>
</html>