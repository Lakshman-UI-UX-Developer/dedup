<%@page import="java.sql.*" %>
<%

String s=request.getParameter("key");
System.out.println(s);
String k=(String)session.getAttribute("k");
System.out.println(k);
if(k.equals(s))
{
	response.sendRedirect("filedownload3.jsp");
}
else
{
	response.sendRedirect("down2.jsp?msg=Invalid Key");
}
%>