import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name="FacultySignup",urlPatterns={"/signup"})
public class FacultySignup extends HttpServlet
{
	@Resource(mappedName="ERP")
	DataSource ds;
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body>");
		
		String name=req.getParameter("name");
		String pass=req.getParameter("pass");
		String email=req.getParameter("email");
		String dept=req.getParameter("dept");
		String f_id=null;
		int id=0;
		
		try
		{
			Connection con=ds.getConnection();
			PreparedStatement ps=con.prepareStatement("select faculty_seq.NEXTVAL from dual");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				id=rs.getInt(1);
			}
			f_id=dept+Integer.toString(id);
			
			PreparedStatement ps1=con.prepareStatement("insert into faculty (id,name,email,dept,pass) values(?,?,?,?,?)");
			ps1.setString(1,f_id);
			ps1.setString(2,name);
			ps1.setString(3,email);
			ps1.setString(4,dept);
			ps1.setString(5,pass);
			
			int x=ps1.executeUpdate();
			if(x>0)
			{	out.println("<center><b>");
				out.println("You are successfully registered Your Id is "+f_id);
				out.println("You will redirect to login page within 5 seconds or ");
				out.println("<a href='index.jsp'>click here to Login</a>");
				res.setHeader("Refresh","10;index.jsp");
				out.println("</b></center>");
			}
			else
			{
				out.println("Please try again!!!!");
				out.println("You will redirect to login page within 5 seconds or ");
				out.println("<a href='index.jsp'>click here to Login</a>");
				res.setHeader("Refresh","5;index.jsp");
				
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("</body></html>");
	}
}