package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Registation;
import service.SignupService;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Signup() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * // TODO Auto-generated method stub doGet(request, response);
		 */

		Registation registation = new Registation();

		registation.setFristname(request.getParameter("fname"));
		registation.setLastname(request.getParameter("lname"));
		registation.setLastname(request.getParameter("lname"));
		registation.setEmail(request.getParameter("email"));
		registation.setNIC(request.getParameter("id"));
		registation.setPhoneNo(request.getParameter("mobileno"));
		registation.setPassword(request.getParameter("password"));
		registation.setConfirmpassword(request.getParameter("con_password"));

		SignupService signupService = new SignupService();
		int status = signupService.addTravelAccountDetails(registation);
		if (status==1) {
			response.setContentType("text/html");
			request.setAttribute("status", "success");
			request.getRequestDispatcher("/sign-in.jsp").forward(request, response);
		} else {

		}

	}

}
