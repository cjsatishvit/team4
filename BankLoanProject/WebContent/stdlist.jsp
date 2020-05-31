<%@page import="trial_2.Student"%> 
<%@page import="java.util.ArrayList"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Student List</title> 
</head> 
<body> 
	<h1>Displaying Student List</h1> 
	<table border ="1" width="500" align="center"> 
		<tr bgcolor="00FF7F"> 
		<th><b>Student Name</b></th> 
		<th><b>Student Age</b></th> 
		<th><b>Course Undertaken</b></th> 
		</tr> 
		<%-- Fetching the attributes of the request object 
			which was previously set by the servlet 
			"StudentServlet.java" 
		--%> 
		<%ArrayList<Student> std = 
			(ArrayList<Student>)request.getAttribute("data"); 
		for(Student s:std){%> 
		<%-- Arranging data in tabular form 
		--%> 
			<tr> 
				<td><%=s.getName()%></td> 
				<td><%=s.getAge()%></td> 
				<td><%=s.getCrs()%></td> 
			</tr> 
			<%}%> 
		</table> 
		<hr/> 
	</body> 
</html> 
