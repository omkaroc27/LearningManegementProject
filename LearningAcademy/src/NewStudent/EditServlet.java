package NewStudent;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h1>Update Students</h1>");
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		
		Students s=StudentDao.getStudentById(id);
		
		out.print("<form action='EditServlet2' method='post'>");
		out.print("<table>");
		out.print("<tr><td></td><td><input type='hidden' name='id' value='"+s.getId()+"'/></td></tr>");
		out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+s.getName()+"'/></td></tr>");
		out.print("<tr><td>Password:</td><td><input type='password' name='password' value='"+s.getPassword()+"'/></td></tr>");
		out.print("<tr><td>Email:</td><td><input type='email' name='email' value='"+s.getEmail()+"'/></td></tr>");
		out.print("<tr><td>City:</td><td>");
		out.print("<select name='city' style='width:150px'>");
		out.print("<option>Kolhapur</option>\r\n" + 
				"<option>Pune</option>\r\n" + 
				"<option>Nagpur</option>\r\n" + 
				"<option>Mumbai</option>\r\n" + 
				"<option>Nashik</option>\r\n" + 
				"<option>Sangli</option>");
		
		out.print("</select>");
		out.print("</td></tr>");
		out.print("<tr><td colspan='2'><input type='submit' value='Edit &amp; Save '/></td></tr>");
		out.print("</table>");
		out.print("</form>");
		
	}
}
