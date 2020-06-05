

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class approval {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","anu","Anu@2000");
        	Statement stat = con.createStatement();
        	ResultSet rs = stat.executeQuery("select * from banruptcy.member");
        	while(rs.next())
        		System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getInt(6)+" "+rs.getInt(7)+rs.getString(8)+" "+rs.getString(9));
        	con.close();
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }
	}

}
