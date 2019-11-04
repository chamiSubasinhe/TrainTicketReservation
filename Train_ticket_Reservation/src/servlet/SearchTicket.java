package servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ticket;
import service.SearchTicketService;

/**
 * Servlet implementation class SearchTicket
 */
@WebServlet("/SearchTicket")
public class SearchTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTicket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		SearchTicketService searchTicketService = new SearchTicketService();
		List<Ticket> ticketList = searchTicketService.getTicketDetails();
		session.setAttribute( "searchTicketList", ticketList );
		

		response.setContentType("text/html");
		request.getRequestDispatcher("/Search.jsp").forward(request, response);
		
		
	}


}
