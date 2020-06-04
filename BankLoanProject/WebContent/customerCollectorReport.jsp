<%@include file="index.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires","0");
	%>
	<div class="container">
		<br><br>
		<p class="font-weight-bolder text-left"><h4><u>Customer Collector Report</u></h4></p>
		<div class="container">
			<form action="customerCollectorReport.jsp" method="get">
				<div class="form-check form-check-inline col-md-4 float-right">
				  <input class="form-check-input" type="radio" name="options" id="inlineRadio1" value="1">
				  <label class="form-check-label" for="inlineRadio1">View Individual Collector Report</label>
				</div>
				<div class="form-check form-check-inline col-md-4 float-right">
				  <input class="form-check-input" type="radio" name="options" id="inlineRadio2" value="2">
				  <label class="form-check-label" for="inlineRadio2">Collectors report for Jewel loan</label>
				</div>
				<div class="form-check form-check-inline col-md-3 float-right">
				  <input class="form-check-input" type="radio" name="options" id="inlineRadio2" value="3">
				  <label class="form-check-label" for="inlineRadio2">Collectors report for Credit loan</label>
				</div>
				<br><br>
				<div class="form-row">
					<div class="form-group col-md-1 float-right"></div>
					<div class="form-group col-md-4 float-right">
						From: <input type="date" class="datepicker" data-date-format="mm/dd/yyyy" name="from">
					</div>
					<div class="form-group col-md-4 float-right">
						To: <input type="date" class="datepicker" data-date-format="mm/dd/yyyy" name="to">
					</div>
					<div class="form-group col-md-3 float-right">
						<button type="submit" class="btn btn-dark">Generate Report</button>
					</div>
				</div>
			</form>
		</div>

		<% 
			String s=request.getParameter("options");
			if(s==null) System.out.println("Select some option");
			else if(s.equals("1")){
		%>
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Amount Collected</th>
		      <th scope="col">Date</th>
		      <th scope="col">Customer Name</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  </tbody>
		 </table>
		<%
			}else if(s.equals("2")){
				String fromDate=request.getParameter("from");
				String toDate=request.getParameter("to");
				String sql="select sum(borrowed_amount/no_of_installments) as amount_collected, collector_id, (select name from collector where collector.collector_id=loans.collector_id) as collector_name from installments left join loans on loans.loan_id=installments.loan_id where loan_type=\"jewel\" group by collector_id order by amount_paid desc";
		 		String username="root";
		 		String pwd="xxxxxxx";
		 %>
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Total Amount Collected</th>
		      <th scope="col">Collector Id</th>
		      <th scope="col">Collector Name</th>
		    </tr>
		  </thead>
		  <tbody>
		<%@page import="java.sql.*" %>
		  <%    try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproject","root",pwd);
				PreparedStatement st=con.prepareStatement(sql);
				ResultSet rs=st.executeQuery();int i=1;
	 			while(rs.next()){
		  			out.println("<tr> <th scope=\"row\">"+i+"</th>");
		  			out.println("<td>"+rs.getDouble(1) +"</td>");
		  			out.println("<td>"+rs.getString(2) +"</td>");
		  			out.println("<td>"+rs.getString(3) +"</td>");
		  			out.println("</tr");
		  			i++;
	 			}
		  	%> 
		  	</tbody>
		  	</table>
		 
		<% 		con.close();
		  		}catch(Exception e){System.out.println(e);}
			}else if(s.equals("3")){
				String fromDate=request.getParameter("from");
				String toDate=request.getParameter("to");
				String sql="select sum(borrowed_amount/no_of_installments) as amount_collected, collector_id, (select name from collector where collector.collector_id=loans.collector_id) as collector_name from installments left join loans on loans.loan_id=installments.loan_id where loan_type=\"cc\" group by collector_id order by amount_paid desc";
		 		String username="root";
		 		String pwd="xxxxxxxx";
		 %>
		 <table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Total Amount Collected</th>
		      <th scope="col">Collector Id</th>
		      <th scope="col">Collector Name</th>
		    </tr>
		  </thead>
		  <tbody>
		<%@page import="java.sql.*" %>
		  <%    try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproject","root",pwd);
				PreparedStatement st=con.prepareStatement(sql);
				ResultSet rs=st.executeQuery();int i=1;
	 			while(rs.next()){
		  			out.println("<tr> <th scope=\"row\">"+i+"</th>");
		  			out.println("<td>"+rs.getDouble(1) +"</td>");
		  			out.println("<td>"+rs.getString(2) +"</td>");
		  			out.println("<td>"+rs.getString(3) +"</td>");
		  			out.println("</tr");
		  			i++;
	 			}
		  	%> 
		  	</tbody>
		  	</table>
		
		 <% con.close();
	  		}catch(Exception e){System.out.println(e);}
		  } %>
	</div>
</body>
</html>
