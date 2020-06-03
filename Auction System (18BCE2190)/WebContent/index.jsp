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
    <meta charset="ISO-8859-1" />
    <title>Auction Page</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
      crossorigin="anonymous"
    />
 
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Auction System</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="index.jsp"
            >Home
            <span class="sr-only">(current)</span></a
          >
          <a class="nav-item nav-link" href="pay.jsp">Payment</a>
          <a class="nav-item nav-link" href="#">Logout</a>
        </div>
      </div>
    </nav>

    <div class="row">
      <div class="col-8">
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body text-dark">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                  
                  <%
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null;
            int maxID = 0;

            
            try                {
                    Class.forName( "com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/auction?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                    //st=conn.createStatement();
                   
                    
                    //String qry="select * from auction where bid=MAX('bid')";
                   // String qry = "SELECT MAX(bid) FROM auction";
                    //rs=st.executeQuery(qry);
                   
                    Statement s2 = conn.createStatement();
                    s2.execute("SELECT MAX(bid) FROM auction");    
                    ResultSet rs2 = s2.getResultSet(); //
                    
                    if (rs2.next()) {
                    	  maxID = rs2.getInt(1);
                    	}
        }
             catch(Exception ex){
             	 ex.printStackTrace(response.getWriter());

             }
         %>
<%= maxID %>
                  
                  
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
                    Weight:
                  </medium>
                </p>
                <a
                  href="form.jsp"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
                    Weight:
                  </medium>
                </p>
                <a
                  href="#"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
Weight:
                  </medium>
                </p>
                <a
                  href="#"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row row-cols-3 row-cols-md-2">
          <div class="col-sm-4">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">
                  Active Users
                </h5>
                <p class="card-text">lore</p>
                Time Left:
                <p id="demo"></p> 
                
                <script > 
var deadline = new Date("Jun 3, 2020 19:37:25").getTime(); 
var x = setInterval(function() { 
var now = new Date().getTime(); 
var t = deadline - now; 
var days = Math.floor(t / (1000 * 60 * 60 * 24)); 
var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60)); 
var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60)); 
var seconds = Math.floor((t % (1000 * 60)) / 1000); 
document.getElementById("demo").innerHTML = 
hours + "h " + minutes + "m " + seconds + "s "; 
    if (t < 0) { 
        clearInterval(x); 
        document.getElementById("demo").innerHTML = "EXPIRED"; 
    } 
}, 1000); 
</script> 
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>