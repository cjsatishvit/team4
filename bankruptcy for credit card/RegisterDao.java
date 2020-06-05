import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class RegisterDao 
{
	private String dburl="jdbc:mysql://localhost:3306/banruptcy";
	private String dbuname="anu";
	private String dbpassword="Anu@2000";
	private String dbdriver="com.mysql.jdbc.Driver";
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return con;
	}
	public String insert(Member member)
	{
		loadDriver(dbdriver);
		Connection con=getConnection();
		String result="Data entered successfully. Your status will be mailed to you in 30 working days";
		String sql="insert into banruptcy.member values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, member.getName());
			ps.setString(2, member.getCustomer());
			ps.setString(3, member.getAmount());
			ps.setString(4, member.getId());
			ps.setString(5, member.getIncome());
			ps.setString(6, member.getAddress());
			ps.setString(7, member.getReason());
			ps.setString(8, member.getAadhar());
			ps.setString(9, member.getProof());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			result="Data not entered";
		}
		
		return result;
		
	}
}
