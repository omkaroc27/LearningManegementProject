package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DbConnection;
import dbconnection.UserDatabase;
import javapages.User;

/**
 * Servlet implementation class Registre
 */
public class Registre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registre() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String classname=request.getParameter("classname");
		//make user object
		User userModel = new User(name, email, password,classname);

		//create a database model
		UserDatabase regUser = new UserDatabase(DbConnection.getConnection());
		if (regUser.saveUser(userModel)) {
		   response.sendRedirect("Home.jsp");
		} else {
		    String errorMessage = "User Not  Available";
		    HttpSession regSession = request.getSession();
		    regSession.setAttribute("RegError", errorMessage);
		    response.sendRedirect("register.jsp");
		    }

	}

}
