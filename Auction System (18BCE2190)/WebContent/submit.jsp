<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>  
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="refresh" content="3;url=bids.jsp" />
<meta charset="ISO-8859-1">
<title>Submit</title>
</head>
<body>

<%    
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null; 

            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            Integer amount = Integer.parseInt(request.getParameter("amount"));

                       
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/auction?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                st=conn.createStatement();

                
                int i = st.executeUpdate("insert into auction (`name`, `number`,`bid`) values('"+name+"','"+phone+"','"+amount+"')");
                
                //st.executeUpdate(sql);
        	}
             catch(Exception ex){
             	 ex.printStackTrace(response.getWriter());
            	 %>
            	 Some error here
            	 <%
             }
         %>


Successfully Submitted 
Redirecting...
</body>
</html>