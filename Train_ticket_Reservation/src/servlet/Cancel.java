package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reservation;
import service.CancelService;
import service.UpdateService;

/**
 * Servlet implementation class Cancel
 */
@WebServlet("/Cancel")
public class Cancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String String = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cancel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	Reservation reservation=new Reservation();
		
		reservation.setfrom(request.getParameter("From"));
		reservation.setTo(request.getParameter("To"));
		reservation.setdate(request.getParameter("day"));
		reservation.setnoOfTickets(request.getParameter("noOfTicket"));
		reservation.setname(request.getParameter("name"));
		
		CancelService cancelService = new CancelService();
		//int status=addTravelAccountDetails(reservation);
		//if (status == 1) {
			response.setContentType("text/html");
			request.setAttribute("status", "success");
			request.getRequestDispatcher("/book.jsp").forward(request, response);
		} //else {

		//}

	//}


}


	


