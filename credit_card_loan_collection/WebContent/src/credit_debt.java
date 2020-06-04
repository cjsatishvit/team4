import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loanleft")
public class status extends HttpServlet {
	private static final long ser
    /**
     * @see HttpServlet#HttpServlialVersionUID = 1L;
       et()
     */
    public status() {
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
		final String dburl = "jdbc:mysql://localhost/Bank";
		final String dbuname = "root";
		final String dbpassword = "sreyan200";
		final String dbdriver= "com.mysql.cj.jdbc.Driver";
		int updateCount = 0;
		
		 Connection conn = null;
		 Statement stmt = null;
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName(dbdriver);

		      //STEP 3: Open a connection
		      conn = DriverManager.getConnection(dburl, dbuname, dbpassword);
		      //STEP 4: Execute a query
		      
		      stmt = conn.createStatement();

		      String sql = "Select ID, Name,Phone_no, Amount,month from Borrower where Date_of_demise IS NOT NULL AND G_ID is NOT NULL";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		      Loan loan = new Loan();
		      while(rs.next()){
		         //Retrieve by column name
		    	 loan.Borrower_ID = rs.getString(4);
		         loan.Phone_no = rs.getLong(5);
		         loan.Amount = rs.getString(6);
		         loan.month = rs.getString(2);
		         loan.name = rs.getString(3);
		         PreparedStatement pstmt = conn.prepareStatement("SELECT Name, ID_Proof, Address, Phone_no FROM Bank.Guarantor WHERE G_ID = ?");
		         pstmt.setString(1, loan.guarantor.Guarantor_ID);
		         ResultSet rs1 = pstmt.executeQuery();
		         //ResultSet rs1 = stmt.executeQuery("Select Name, ID_Proof, Address, Phone_no from Guarantor where G_ID = ?");
		         rs1.next();
		         loan.guarantor.Name = rs1.getString("Name");
		         loan.guarantor.phone = rs1.getString("ID_Proof");
		         loan.guarantor. = rs1.getString("Address");
		         loan.guarantor.Phone_no = rs1.getLong("Phone_no");
		         rs1.close();
		         loan.Name = loan.guarantor.Name;
		         loan.ID_proof = loan.guarantor.ID_proof;
		         loan.Address = loan.guarantor.Address;
		         loan.Phone_no = loan.guarantor.Phone_no;
		         PreparedStatement psmt1 = conn.prepareStatement("Update Borrower set Name = ?"+",ID_Proof =? " +",Address =? "+", Phone_no =?"+", G_ID = NULL WHERE B_ID=?");
		         psmt1.setString(1, loan.Name);
		         psmt1.setString(2, loan.ID_proof);
		         psmt1.setString(3, loan.Address);
		         psmt1.setLong(4, loan.Phone_no);
		         psmt1.setString(5, loan.month);
		         psmt1.executeUpdate();
		         PreparedStatement psmt2 = conn.prepareStatement("Delete from Guarantor where G_ID = ?");
		         psmt2.setString(1, loan.guarantor.Guarantor_ID);
		         psmt2.executeUpdate();
		         updateCount++;		         
		      }
		      rs.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   PrintWriter out = response.getWriter();
		   if(updateCount==0){
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('Records are upto date');");
			   out.println("location='ajax3.html';");
			   out.println("</script>");
		   }
		   else{
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('"+Integer.toString(updateCount)+" records updated');");
			   out.println("location='ajax3.html';");
			   out.println("</script>");
		  
		   }
	}

}