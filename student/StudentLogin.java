import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.annotation.Resource;
import javax.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet(name="StudentLogin",urlPatterns={"/login"})

public class StudentLogin extends HttpServlet
{
	@Resource(mappedName="erp")
	DataSource ds;
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body>");
		
		String id1=req.getParameter("id");
		String pass=req.getParameter("pass");
		
		try
		{
			int id=Integer.parseInt(id1);
			Connection con=ds.getConnection();
			PreparedStatement ps=con.prepareStatement("select id,pass,name from student where id=? and pass=?");
			ps.setInt(1,id);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession se=req.getSession();
				String name=rs.getString("name");
				se.setAttribute("name",name);
				se.setAttribute("id",id);
				res.sendRedirect("dashboard.jsp");
			}
			else
			{
				res.sendRedirect("index.jsp");
			}
		}
		/*catch(NumberFormatException ne)
		{
			res.sendRedirect("index.jsp");
		}*/
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("</body></html>");
	}
}