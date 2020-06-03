/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	Bidder_sql.java
 * Purpose:       	Receives data from bidderservlet.java and updates the sql database(bidder database)
 * Class Used by:   bidder.java; 
 * Classes Used:    bidderservlet.java;
 */

package trial_2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.sql.*;

import javax.xml.crypto.Data;

public class Bidder_sql {
	 // JDBC driver name and database URL
	   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost:3306/trial_test";
	   //  Database CloneNotSupportedExceptionentials
	   static final String USER = "root";
	   static final String PASS = "root";
	   static DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	   static Date dateobj = new Date();
	   static String cur_date = (df.format(dateobj));
	   
	   /*
		   * Author:       	Praneeth
		   * Reg. No:       18BCE2042
		   * Function Name: SendData()
		   * Purpose:       Gets data from bidderservlet.java and updates the sql database(bidder database)
		   * Arguments:     bidder
		   * Return:        boolean
		   */
	   
	   public static boolean SendData(bidder x) {
	   Connection conn = null;
	   Statement stmt = null;
	   boolean tmp = true;
	   try{
	      //STEP 2: Register JDBC driver
	      Class.forName("com.mysql.jdbc.Driver");

	      //STEP 3: Open a connection
	      System.out.println("Connecting to a selected database...");
	      conn = DriverManager.getConnection(DB_URL, USER, PASS);
	      System.out.println("Connected database successfully...");
	      
	      //STEP 4: Execute a query
	      System.out.println("Inserting records into the table...");
	      stmt = conn.createStatement();
	      
	      
	      String sql = "INSERT INTO bidder " +
                  "VALUES ('"+x.getBidder_ID() + "', '"+ x.getFname() + "', '"+ x.getLname() + "', '"+x.getPhone_no() +"', '"+x.getAddress() +"', '"+x.getPAN() +"', '"+x.getAadhar() +"', '"+ x.getDOB() +"', '"+ cur_date +"')";
			
	      stmt.executeUpdate(sql);
	      System.out.println("Inserted records into the table...");

	   }catch(SQLException se){
	      //Handle errors for JDBC
	      se.printStackTrace();
	      tmp = false;
	   }catch(Exception e){
	      //Handle errors for Class.forName
	      e.printStackTrace();
	   }finally{
	      //finally block used to close resources
	      try{
	         if(stmt!=null)
	            conn.close();
	      }catch(SQLException se){
	      }
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	         se.printStackTrace();
	      }
	   }
	   System.out.println("Goodbye!");
	   return tmp;
	}
}
