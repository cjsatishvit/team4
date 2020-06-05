import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class register 
{
	private String dburl="jdbc:mysql://localhost:3306/userdb";
	private String dbuname="akil";
	private String dbpassword="akilan2001";
	private String dbdriver="com.mysql.jdbc.Driver";
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl,dbuname,dbpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public String insert(Member member)
	{
		loadDriver(dbdriver);
		Connection con=getConnection();
		String result="***** Bankruptcy applied successfully*****";
		String sql="insert into userdb.member values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, member.getCustid());
			ps.setString(2, member.getLoanid());
			ps.setString(3, member.getAmount());
			ps.setString(4, member.getType());
			ps.setString(5, member.getReason());
			ps.setString(6, member.getAadharno());
			ps.setString(7, member.getAccountno());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="***  Data not entered  ***";
		}
	
		return result;
	}

}
