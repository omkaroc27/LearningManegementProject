package NewStudent;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<body bgcolor=\"#4dd2ff\">");
	
		out.println("<br>");
		out.println("<div align=\"center\">");
		out.println("<h1>- Students List -</h1>");
		
		List<Students> list=StudentDao.getAllStudent();
		
		out.print("<table border='1' width='70%'");
		out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>City</th><th>Edit</th><th>Delete</th></tr>");
		for(Students e:list){
			out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getPassword()+"</td><td>"+e.getEmail()+"</td><td>"+e.getCity()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");
		}
		out.print("</table>");
		out.println("</div>");
		out.println("</body>");
		
		out.close();;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
