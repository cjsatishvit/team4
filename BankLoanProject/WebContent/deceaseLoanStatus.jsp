<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
<%

String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/Bank";
String userId = "root";
String password = "saarthak1238";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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
							<th>Loan ID</th>
							<th>Borrower ID</th>
							<th>Total Installments</th>							
							<th>Amount Borrowed</th>
							<th>Amount Repaid</th>
							<th>Installments expected(Till Date)</th>
							<th>Pending Repayment Amount</th>
							<th>Demise Date</th>
							
						</tr>
					</thead>
					<tbody>
						<%!
							int daydiff;
							int monthdiff;
						%>
						<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT l.Loan_ID as Loan_ID, b.B_ID as B_ID,l.No_of_Installments as No_of_Installments, l.Borrowed_Amount as Borrowed_Amount, l.Repaid_Amount as Repaid_Amount, DATEDIFF(CURDATE(), l.Approval_Date) AS DateDiff, l.Borrowed_Amount-l.Repaid_Amount as Pending_Amount, DATE_FORMAT(b.Date_of_demise, '%D %M %Y') as Date_of_demise from Loans l, Borrower b WHERE l.B_ID=b.B_ID AND b.Date_of_Demise IS NOT NULL AND b.G_ID IS NULL";
						
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
							daydiff =Integer.parseInt(resultSet.getString("DateDiff"));
							monthdiff = (int)(daydiff/30);
							
						%>
							<tr>
							
								<td><%=resultSet.getString("Loan_ID") %></td>
								<td><%=resultSet.getString("B_ID") %></td>
								<td><%=resultSet.getString("No_of_Installments") %></td>
								<td><%=resultSet.getString("Borrowed_Amount")%></td>
								<td><%=resultSet.getString("Repaid_Amount")%></td>
								<td><%=Integer.toString(monthdiff)%></td>
								<td><%=resultSet.getString("Pending_Amount")%></td>
								<td><%=resultSet.getString("Date_of_demise")%></td>
								
							
							</tr>
						
						<% 
						}
						
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
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
