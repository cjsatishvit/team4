import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ApplyCheck
 */
@WebServlet("/ApplyCheck")
public class ApplyCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplyCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customerid=request.getParameter("customerid");
		String loan=request.getParameter("loan");
		String id=request.getParameter("id");
		String amount=request.getParameter("amount");
		String reason=request.getParameter("reason");
		String doc=request.getParameter("doc");
		if(customerid.isEmpty()||loan.isEmpty()||id.isEmpty()||amount.isEmpty()||reason.isEmpty()||doc.isEmpty())
		{
			response.sendRedirect("error.jsp");
		}
		else
		{
			int a=0;
			String str1=Integer.toString(a);
			if(!(customerid.equals(str1)||id.equals(str1)||amount.equals(str1)))
			{
			  response.sendRedirect("Approval.jsp");
			}
			else
			{
				response.sendRedirect("verify.jsp");
			}
		}
	}
}
