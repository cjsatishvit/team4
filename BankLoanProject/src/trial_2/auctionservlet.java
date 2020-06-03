/*
 * Author:        	Praneeth
 * Reg. No.:      	18BCE2042
 * Name:        	auctionservlet.java
 * Purpose:       	Sending Data from Jewel and Auction Database via AuctionDAO.java to auction_notification.jsp
 * Class Used by:   auction_notification.jsp;
 * Classes Used:    AuctionDAO.java; Auction.java; Jewels.java;
 */


package trial_2;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import trial_2.Auction;
import trial_2.Jewels;
import trial_2.AuctionDAO;


/**
 * Servlet implementation class auctionservlet
 */
@WebServlet("/auction")
public class auctionservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AuctionDAO auctionDAO;

	public void init() {
	        auctionDAO = new AuctionDAO();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public auctionservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        try {
        	listUser(request, response);
           
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
	}
	
	
		/*
	   * Author:       	Praneeth
	   * Reg. No:       18BCE2042
	   * Function Name: listUser()
	   * Purpose:       Gets data in hashmap format from AuctionDAO.java and dispatches it to auction_notification.jsp
	   * Arguments:     HttpServletRequest; HttpServletResponse;
	   * Return:        -
	   */
	
	private void listUser(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException, ServletException {
		Map<String, Map<Jewels,Auction>> listitems = auctionDAO.selectAllitems();
		Map<String, Map<Jewels,Auction>> listModal = auctionDAO.selectpresent();
		Map<String,Map<String, Map<Jewels,Auction>>>  listTotal = new HashMap<String,Map<String, Map<Jewels,Auction>>>();
		listTotal.put("listModal",listModal);
		listTotal.put("listUser",listitems);
		System.out.println("Listtotal");
		System.out.println(listTotal);
		        request.setAttribute("listTotal", listTotal);
		        RequestDispatcher dispatcher = request.getRequestDispatcher("auction_notification.jsp");
		        dispatcher.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
