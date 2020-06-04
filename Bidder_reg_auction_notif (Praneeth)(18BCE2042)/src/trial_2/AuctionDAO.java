/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	AuctionDAO.java
 * Purpose:     	Gets data from SQL database (Jewels and Auction database) and and forwards to auctionservlet.java in 
 * 					Hashmap format
 * Class Used by:   Auction.java, Jewels.java;
 * Classes Used:    auctionservlet.java;
 */

package trial_2;

import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import trial_2.Auction;
import trial_2.Jewels;

public class AuctionDAO {
    private String jdbcURL = "jdbc:mysql://localhost/trial_test";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";
    public ResultSet date;
    public Connection connection = null;
    public Statement stmt1 = null;
    public Statement stmt2 =null;

    static DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    static Date dateobj = new Date();
    static String cur_date = (df.format(dateobj));
    
    private static String SELECT_DETAILS = "SELECT auction.J_ID,Title,bid_op,reg_cls,bid_reg FROM trial_test.auction, trial_test.jewels WHERE auction.J_ID = jewels.J_ID AND bid_reg ='";
    private static final String SELECT_DATES = "SELECT DISTINCT bid_reg FROM trial_test.auction order by bid_reg DESC;";
    private static String SELECT_MODAL = "SELECT auction.J_ID,Title,bid_op,reg_cls,bid_reg FROM auction,jewels WHERE auction.J_ID = jewels.J_ID AND bid_reg ='" + cur_date + "';";
    
    public AuctionDAO() {}
    
    /*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: getConnection()
	   * Purpose:       Connects to SQL database using pre-defined variables
	   * Arguments:     -
	   * Return:        Connection
	   */


    protected Connection getConnection() {
        Connection connection = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            stmt1 = connection.createStatement();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    
    /*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: selectpresent()
	   * Purpose:       Gets data from SQL database using a pre-defined string variable which contains a query and
	   * 				sends the data to auctionservlet.java in Hashmap format. Used for POP-UP/MODAL in auction_notification.jsp
	   * Arguments:     -
	   * Return:        Map<String, Map<Jewels,Auction>>
	   */
    
    public Map<String, Map<Jewels,Auction>> selectpresent(){
    	Map<String, Map<Jewels,Auction>> sm = new HashMap<String, Map<Jewels,Auction>>();
        // Step 1: Establishing a Connection
        try { Connection connection = getConnection();
			stmt2=connection.createStatement();
			System.out.println(SELECT_MODAL);
            // Step 2: Execute the query or update query
            ResultSet rs_sm = stmt2.executeQuery(SELECT_MODAL);
            // Step 3: Process the ResultSet object.
            Map<Jewels,Auction> tmp1 = new HashMap<Jewels,Auction>();
            while (rs_sm.next()) {
                String j_id = rs_sm.getString("J_ID");
                String bid_op = rs_sm.getString("bid_op");
                String reg_cls = rs_sm.getString("reg_cls");
                String title = rs_sm.getString("Title");
                Auction users = new Auction(j_id, bid_op, reg_cls);
                Jewels users1 = new Jewels(title);
                tmp1.put(users1,users);
            } 
            boolean ch = tmp1.isEmpty();
            if (!ch) {
            sm.put(cur_date,tmp1);}
        } catch (SQLException e) {
            printSQLException(e);
        }
        System.out.println("final_sm");
    	System.out.println(sm);
        return sm;
    }
    
    /*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: selectAllUsers()
	   * Purpose:       Gets data from SQL database using a pre-defined string variable which contains a query and
	   * 				sends the data to auctionservlet.java in Hashmap format. Used for Table in auction_notification.jsp
	   * Arguments:     -
	   * Return:        Map<String, Map<Jewels,Auction>>
	   */
    
    public Map<String, Map<Jewels,Auction>> selectAllitems() {
    	
    	try {
    		Connection connection = getConnection();
    		stmt1=connection.createStatement();
    		System.out.println(SELECT_DATES);
    		this.date = stmt1.executeQuery(SELECT_DATES);
    		} 	
    	catch (SQLException e) {
        	printSQLException(e);
    	}
    	
        // using try-with-resources to avoid closing resources (boiler plate code)
        Map<String, Map<Jewels,Auction>> hm = new HashMap<String, Map<Jewels,Auction>>();
        // Step 1: Establishing a Connection
        try { Connection connection = getConnection();

            // Step 2:Create a statement using connection object
        	while(date.next()) {
        	String SELECT_DETAILS_2 = SELECT_DETAILS + date.getString("bid_reg") + "' ORDER BY J_ID;";
            PreparedStatement preparedStatemen = connection.prepareStatement(SELECT_DETAILS_2);
            System.out.println(preparedStatemen);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatemen.executeQuery();
            // Step 4: Process the ResultSet object.
            Map<Jewels,Auction> tmp = new HashMap<Jewels,Auction>();
            while (rs.next()) {
					/*
					 * users.clear(); users1.clear(); System.out.println("before_users");
					 * System.out.println(users); System.out.println("before_users1");
					 * System.out.println(users1);
					 */
                String j_id = rs.getString("J_ID");
                String bid_op = rs.getString("bid_op");
                String reg_cls = rs.getString("reg_cls");
                String title = rs.getString("Title");
                Auction users = new Auction(j_id, bid_op, reg_cls);
                Jewels users1 = new Jewels(title);
                tmp.put(users1,users);
            }           
            hm.put(date.getString("bid_reg"),tmp);}
        } catch (SQLException e) {
            printSQLException(e);
        }
        System.out.println("final_hm");
    	System.out.println(hm);
        return hm;
    }
    
    /*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: printSQLException()
	   * Purpose:       Prints errors
	   * Arguments:     SQLException
	   * Return:        -
	   */

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
