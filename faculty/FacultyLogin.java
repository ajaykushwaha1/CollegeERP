import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.PrintWriter;
import java.io.IOException;

@WebServlet(name="FacultyLogin",urlPatterns={"/login"})
public class FacultyLogin extends HttpServlet
{
	@Resource(mappedName="ERP")
	DataSource ds;
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body>");
		
		String id=req.getParameter("id");
		String pass=req.getParameter("pass");
		
		try
		{
			Connection con=ds.getConnection();
			String sql="select name,pass from faculty where id='"+id+"' and pass='"+pass+"'";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				HttpSession se=req.getSession();
				String name=rs.getString("name");
				se.setAttribute("name",name);
				res.sendRedirect("dashboard.jsp");
			}
			else
			{
				res.sendRedirect("dashboard.jsp");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}	
}
