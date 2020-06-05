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
	

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Loan borrower</td>
<td>Loan id</td>
<td>Buyer name</td>
<td>Date of auction</td>
<td>Base price</td>
<td>Fianl Price</td>
<td>Description</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("Buyer_name") %></td>
<td><%=resultSet.getString("Date_of_auction") %></td>
<td><%=resultSet.getString("Base_price") %></td>
<td><%=resultSet.getString("Final_price") %></td>
<td><%=resultSet.getString("Description") %></td><td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>