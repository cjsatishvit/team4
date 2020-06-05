<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1" %>
 <%
<sql:query var="stockresult" scope="request" dataSource="com.mysql.jdbc.Driver">
   SELECT stock <!-- select the current stock -->
   FROM stocklevels
   WHERE productID = $param.productID
</sql:query>

<!-- calculate the new value from the first row of the query result -->
<c:set var"newstocklevel" value="${stockresult.rows[0].stock - orderqty}"/> 


<sql:update var="newstock" scope="request" dataSource="com.mysql.jdbc.Driver">
   UPDATE stocklevels
   SET stock=$newstocklevel
   WHERE productID = $param.productID
</sql:query>
%>

 <%
    if(request.getParameter("a")!=null){ // this is to avoid null pointer exception
      try{
      // create a java mysql database connection
      String myDriver = "com.mysql.jdbc.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/studentEnrollment";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "12");

      // create the java mysql update preparedstatement
      String query = "update etudiants set dv_o_math = ? where first_name = ?";
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setInt(1, 15);
      preparedStmt.setString(2,request.getParameter("bt2"));

      // execute the java preparedstatement
      preparedStmt.executeUpdate();

      conn.close();
    } 
}catch(Exception e ){
e.getMessage();
}
%>