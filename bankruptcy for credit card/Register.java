

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet() 
     */
    public Register() {
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
		String name=request.getParameter("name");
		String customer=request.getParameter("customer");
		String amount=request.getParameter("amount");
		String id=request.getParameter("id");
		String income=request.getParameter("income");
		String address=request.getParameter("address");
		String reason=request.getParameter("reason");
		String aadhar=request.getParameter("aadhar");
		String proof=request.getParameter("proof");
		Member member=new Member(name, customer, amount, id, income, address, reason, aadhar, proof);
		RegisterDao rDao=new RegisterDao();
		String result=rDao.insert(member);
		response.getWriter().print(result);
	}

}
