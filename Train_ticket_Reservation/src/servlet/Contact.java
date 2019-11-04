package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ContactService;


/**
 * Servlet implementation class contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
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
		Contact contact = new Contact();
		
		contact.setname(request.getParameter("name"));
		contact.setemail(request.getParameter("email"));
		contact.setmessage(request.getParameter("message"));
		ContactService contactService = new ContactService();
		int status = contactService.addTravelAccountDetails(contact);
		if (status==1) {
			response.setContentType("text/html");
			request.setAttribute("status", "success");
			request.getRequestDispatcher("/contact.jsp").forward(request, response);
		} else {

		}

	}

	private void setmessage(String parameter) {
		// TODO Auto-generated method stub
		
	}

	private void setemail(String parameter) {
		// TODO Auto-generated method stub
		
	}

	private void setname(String parameter) {
		// TODO Auto-generated method stub
		
	}

	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getEmail() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getMessage() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
