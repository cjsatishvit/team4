
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class MyDataBase {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","akil","akilan2001");
        	Statement stat = con.createStatement();
        	ResultSet rs = stat.executeQuery("select * from usewrdb.member");
        	while(rs.next())
        		System.out.println(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getInt(6)+" "+rs.getInt(7));
        	con.close();
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }
	}

}
