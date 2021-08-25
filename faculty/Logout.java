import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="Logout" , urlPatterns={"/logout"})

public class Logout extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body>");
		
		HttpSession s=req.getSession(false);
		
		if(s!=null)
		{
			s.invalidate();
			out.println("You have successfully logout. <br>");
			out.println(" You will redirect to login page within 5 seconds");
			res.setHeader("Refresh","5;index.jsp");
		}
		else
		{
			out.println("login is required.<br>");
			out.println(" You will redirect to login page within 5 seconds");
			res.setHeader("Refresh","5;index.jsp");			
		}
	}
}