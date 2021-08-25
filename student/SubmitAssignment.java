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

@WebServlet(name="SubmitAssignment",urlPatterns={"/submitassignment"})
@MultipartConfig
public class SubmitAssignment extends HttpServlet
{
	@Resource(mappedName="erp")
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		String description = request.getParameter("description"); 
		Part filePart = req.getPart("file"); 
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
		InputStream fileContent = filePart.getInputStream();
	}
	
}