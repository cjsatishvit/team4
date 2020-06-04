/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	bidderservlet.java
 * Purpose:       	Receives data from bidder_reg.jsp and sends data to bidder_sql.java
 * Class Used by:   bidder.java; bidder_sql.java; bidder_reg.jsp; suc.jsp; fail.jsp
 * Classes Used:    -
 */

package trial_2;


import java.io.*;  
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

/**
 * Servlet implementation class bidderservlet
 */
@SuppressWarnings("serial")
@WebServlet("/bidderservlet")
public class bidderservlet extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Bidder_sql y = new Bidder_sql(); 
	
	/*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: service()
	   * Purpose:       Gets data from bidder_reg.jsp and sends it to bidder_sql.java to update sql database. Redirects page(suc.jsp, fail.jsp)
	   * Arguments:     HttpServletRequest; HttpServletResponse;
	   * Return:        -
	   */
	
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		bidder x = new bidder(req.getParameter("first name"),req.getParameter("last name"),req.getParameter("email"),req.getParameter("address"),req.getParameter("phone"),req.getParameter("pan"),req.getParameter("dob"),req.getParameter("aadhar"));
		
		System.out.println("First name:" + x.getFname() + " Last Name:" + x.getLname());
		
		boolean check = y.SendData(x);
		
		
		//Redirecting page
		if (check){
			res.setContentType("text/html");
			String site = new String("suc.jsp");
			res.setStatus(res.SC_MOVED_TEMPORARILY);
		    res.setHeader("Location", site);  
		}
		else {
			res.setContentType("text/html");
			String site = new String("fail.jsp");
			res.setStatus(res.SC_MOVED_TEMPORARILY);
		    res.setHeader("Location", site); 
		}
		
	}

}
