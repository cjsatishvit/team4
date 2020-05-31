/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	Auction.java
 * Purpose:       	Java class for Auction
 * Class Used by:   auctionservlet.java; AuctionDAO.java; auction_notification.jsp;
 * Classes Used:    -
 */

package trial_2;

public class Auction {
	private String J_ID;
	private String Bid_op;
	private String reg_cls;
	private String bid_reg;
	private String Base_price;
	
	
	public Auction(String bid_reg) {
		super();
		this.bid_reg = bid_reg;
	}
	

	//Constructors
	public Auction(String j_ID, String bid_op, String reg_cls) {
		super();
		J_ID = j_ID;
		Bid_op = bid_op;
		this.reg_cls = reg_cls;
	}


	//Getters
	public String getJ_ID() {
		return J_ID;
	}

	public String getBid_op() {
		return Bid_op;
	}

	public String getReg_cls() {
		return reg_cls;
	}

	public String getBid_reg() {
		return bid_reg;
	}

	public String getBase_price() {
		return Base_price;
	}
}
