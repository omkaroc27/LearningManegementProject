package NewStudent;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		
		Students s=new Students();
		s.setName(name);
		s.setPassword(password);
		s.setEmail(email);
		s.setCity(city);
		
		int status=StudentDao.save(s);
		if(status>0){
			
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Record saved successfully!');");  
			out.println("</script>");
			request.getRequestDispatcher("Student.jsp").include(request, response);
		}else{
			
			out.println("Sorry! unable to save record");
			
		}
		
		out.close();
	}

	}


