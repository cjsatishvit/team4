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
  <%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.sql.Statement"%>
  <%@page import="java.sql.Connection"%>
  <%@page import="java.sql.PreparedStatement"%>
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
ResultSet resultSet2 = null;

%>
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
			<div class = "customDiv"><h3><b>Borrower Decease Status</b></h3></div>
		</div>
	</div>
	<br>
	<br>
	<div class = "row">
		<div class = "col-md-0">
			<div class = "customDiv">  </div>
		</div>
		<div class = "col-md-12">
			<div class = "table-responsive">
				<table class = "table table-bordered table-hover" name = "dstatus">
					<thead>
						<tr>
							<th>Borrower Name</th>
							<th>Borrower ID</th>
							<th>Amount Borrowed</th>
							<th>Amount Repaid</th>
							<th>Decease Status</th>
							<th>Date of Demise</th>
							<th>Guarantor's ID</th>						
							
						</tr>
					</thead>
					<tbody>
						<%!
						public String dstatus;
						public String cellColor;
						public String gid;
						public String ddate;
						public String gname;
						%>
						<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT b.Name as Name, b.G_ID as G_ID, l.Repaid_Amount as Repaid_Amount, b.B_ID as B_ID, l.Borrowed_Amount as Borrowed_Amount, DATE_FORMAT(b.Date_of_demise, '%D %M %Y') as Date_of_demise FROM Borrower b, Loans l WHERE b.B_ID = l.B_ID AND l.Loan_Type ='Credit Card'";
						
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){							
						    ddate = resultSet.getString("Date_of_demise");
							gid = resultSet.getString("G_ID");
							
					        //resultSet2 = statement.executeQuery("SELECT Name FROM Bank.Guarantor WHERE G_ID = "+gid);
					        //gname = resultSet2.getString("Name");
							
							if(ddate!=null && gid!=null){
								dstatus="Deceased";
								cellColor="red";
							}
							else if(ddate==null)
							{
								ddate = "N/A";
								dstatus = "Not Deceased";
								cellColor="lightgreen";
							}
							else if(ddate!=null && gid==null)
							{
								dstatus = "Borrower Transfered";
								cellColor = "lightblue";
								gid = "N/A";
								gname = "N/A";
							}
						%>
							<tr bgcolor = '<%=cellColor%>'>
							
								<td><%=resultSet.getString("Name") %></td>
								<td><%=resultSet.getString("B_ID") %></td>
								<td><%=resultSet.getString("Borrowed_Amount") %></td>
								<td><%=resultSet.getString("Repaid_Amount") %></td>								
								<td><%=dstatus%></td>
								<td><%=ddate%></td>
								<td><%=gid %></td>
								
								
							
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
<% 
%>
</html>
