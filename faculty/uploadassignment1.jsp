<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page session="false"%>
<%
	try
	{
		MultipartRequest mpr=new MultipartRequest(request,application.getRealPath("file"),500*1024*1024);
		String s1=mpr.getOriginalFileName("file");
		out.println("File uploaded successfully "+s1);
	}
	catch(Exception e)
	{
		out.println(e);
	}





%>