/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	Jewels.java
 * Purpose:       	Java class for Jewels
 * Class Used by:   auction_notification.jsp; AuctionDAO.java
 * Classes Used:    -
 */

package trial_2;

public class Jewels {
	
	private String J_ID;
	private String Title;
	private String img_src;
	
	//Constructors
	public Jewels(String title) {
		super();
		Title = title;
	}
	
	//Getters
	public String getJ_ID() {
		return J_ID;
	}

	public String getTitle() {
		return Title;
	}

	public String getImg_src() {
		return img_src;
	}
	
}
