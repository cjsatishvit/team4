package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		String uname=request.getParameter("userName");
		String pass=request.getParameter("pwd");
		if(uname.equals("Akancha") && pass.equals("12345")) {
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("customerCollectorReport.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

}
