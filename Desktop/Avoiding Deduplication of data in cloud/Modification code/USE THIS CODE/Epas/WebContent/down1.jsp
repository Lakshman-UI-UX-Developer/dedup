<%@page import="java.sql.*" %>
<%

String s=request.getParameter("key");
System.out.println(s);
String k=(String)session.getAttribute("k");
System.out.println(k);
if(k.equals(s))
{
	response.sendRedirect("filedownload2.jsp");
}
else
{
	response.sendRedirect("down.jsp?msg=Invalid Key");
}
%>