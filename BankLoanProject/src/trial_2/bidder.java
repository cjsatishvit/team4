/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	bidder.java
 * Purpose:       	Java class for bidder
 * Class Used by:   bidderservlet.java; bidder_sql.java;
 * Classes Used:    -
 */

package trial_2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class bidder {
	private String Fname;
	private String Lname;
	private String Bidder_ID;
	private String Password;
	private String Phone_no;
	private String PAN;
	private String DOB;
	private String Aadhar;
	private String Reg_bidder;

	//Constructors
	public bidder(String fname, String lname, String bidder_ID, String password, String phone_no, String pAN,
			String dOB, String aadhar) {
		super();
		Fname = fname;
		Lname = lname;
		Bidder_ID = bidder_ID;
		Password = password;
		Phone_no = phone_no;
		PAN = pAN;
		DOB = dOB;
		Aadhar = aadhar;
	}
	
	//Getters
	public  String getFname() {
		return Fname;
	}
	public String getLname() {
		return Lname;
	}
	public String getBidder_ID() {
		return Bidder_ID;
	}
	public String getPassword() {
		return Password;
	}
	public String getPhone_no() {
		return Phone_no;
	}
	public String getPAN() {
		return PAN;
	}
	public String getDOB() {
		return DOB;
	}
	public String getAadhar() {
		return Aadhar;
	}
	
	/*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: validate()
	   * Purpose:       Compares I/P date with current date and returns a int value.
	   * Arguments:     Date
	   * Return:        int
	   */
	
	public int validate(Date d1) {
		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
		Date d2 = new Date();
	      //java.util.Date d1 = sdformat.parse("2019-04-15")
	      System.out.println("The date 1 is: " + sdformat.format(d1));
	      System.out.println("The date 2 is: " + sdformat.format(d2));
	      if(d1.compareTo(d2) > 0) {
	         return -1; //Date 1 occurs after Date 2
	      } else if(d1.compareTo(d2) < 0) {
	         return 1; // Date 1 occurs before Date 2
	      } else if(d1.compareTo(d2) == 0) {
	         return 0; //equal dates
	      }
	      return -2; //error in I/P
	}
}
