import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	
/**
 * Servlet implementation class Approval
 */
@WebServlet("/Approvalcheck")
public class Approvalcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Approvalcheck() {
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
		String id=request.getParameter("id");
		String customerid=request.getParameter("customerid");
		String loan=request.getParameter("loan");
		String reason=request.getParameter("reason");
		String choose=request.getParameter("choose");
		if(id.isEmpty()||customerid.isEmpty()||loan.isEmpty()||reason.isEmpty()||choose.isEmpty())
		{
			response.sendRedirect("error.jsp");
		}
		else
		{
			int a=0;
			String str1=Integer.toString(a);
			if(!(id.equals(str1)||customerid.equals(str1)))
			{
			  response.sendRedirect("verify.jsp");
			}
			else
			{
				System.out.println("Invalid value");
			}
		}
	}

}
