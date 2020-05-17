<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank</title>
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
		<div class = "col-md-4">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-8">
			<div class = "customDiv"><h3><b>Decease Loan Re-payment Status</b></h3></div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class = "row">
		<div class = "col-md-1">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-11">
			<div class = "table-responsive">
				<table class = "table table-bordered table-hover" name = "lstatus">
					<thead>
						<tr>
							<th>Total Installments</th>
							<th>Borrower ID</th>
							<th>Amount Borrowed</th>
							<th>Amout Repaid</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>50</td>
							<td>123</td>
							<td>5000000</td>
							<td>2000000</td>
						</tr>
						<tr>
							<td>200</td>
							<td>200000000</td>
							<td>154</td>
							<td>100000000</td>
						</tr>
						<tr>
							<td>10</td>
							<td>768</td>
							<td>1000000</td>
							<td>400000</td>
						</tr>
						<tr>
							<td>12</td>
							<td>988</td>
							<td>1200000</td>
							<td>300000</td>
						</tr>
					</tbody>
				
				</table>
			</div>
		</div>	
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class = "row">
		<div class= "col-md-5">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-7">
			<a href="deceaseloansmenu.jsp"class = "btn btn-default"> <-BACK </a>		
		</div>
	</div>
</div>
</body>
</html>