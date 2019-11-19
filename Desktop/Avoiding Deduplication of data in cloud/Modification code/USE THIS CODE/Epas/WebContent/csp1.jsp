<%@page import="java.sql.*"%>
<%String name=request.getParameter("name");
String pswd=request.getParameter("pswd");
if(name.equals("csp")&&pswd.equals("csp"))
{
response.sendRedirect("chome.jsp?msg=login succesfully");
}
else
{
response.sendRedirect("csp.jsp?msg=please enter valid credentials");
}
%>