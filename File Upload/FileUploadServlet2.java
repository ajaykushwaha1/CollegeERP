import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.oreilly.servlet.*;

public class FileUploadServlet2 extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		ServletInputStream in=req.getInputStream();
		ServletOutputStream out=res.getOutputStream();
		
		FileOutputStream fout=new FileOutputStream("e:\\f2\\demo.txt");
		int i=0;
		while((i=in.read())!=-1)
		{
			fout.write(i);
		}
		out.println("<html><body>");
		out.println("File successfully uploaded ");
		out.println("</body></html>");
	}
}
