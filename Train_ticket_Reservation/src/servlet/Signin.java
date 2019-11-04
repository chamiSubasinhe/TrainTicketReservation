package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import service.SigninService;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signin() {
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
		HttpSession session = request.getSession();
		Login login = new Login();
		
		login.setEmail(request.getParameter("email"));
		login.setPassword(request.getParameter("password"));
		
		SigninService signinService =  new SigninService();
		boolean status = signinService.signinCheck(login);
		
		session.removeAttribute("loginStatus"); 
		response.setContentType("text/html");
		if (status) {
			request.setAttribute("loginStatus", "valid");
			session.setAttribute( "loginStatus", true );
			System.out.println(session.getAttribute("loginStatus"));
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		} else {
			request.setAttribute("loginStatus", "invalid");
			request.getRequestDispatcher("/sign_in.jsp").forward(request, response);
		}
		
		
		
	}

}
