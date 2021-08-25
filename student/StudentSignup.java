import javax.servlet.annotation.WebServlet;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name="StudentSignup",urlPatterns={"/signup"})
public class StudentSignup extends HttpServlet
{
	@Resource(mappedName="erp")
	DataSource ds;
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body>");
		
		String name=req.getParameter("name");
		String id1=req.getParameter("id");
		String dept=req.getParameter("dept");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		
		try
		{
			int id=Integer.parseInt(id1);
			HttpSession se=req.getSession();
			Connection con=ds.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
			
			ps.setLong(1,id);
			ps.setString(2,name);
			ps.setString(3,dept);
			ps.setString(4,email);
			ps.setString(5,pass);
			
			int x=ps.executeUpdate();
			
			if(x>0)
			{
				se.setAttribute("success","You have successfully signup");
				res.sendRedirect("index.jsp");
			}
			else
			{
				se.setAttribute("success","Please try again");
				res.sendRedirect("index.jsp");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("</body></html>");
	}
}

