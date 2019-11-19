<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String r=request.getParameter("r"); 
String a=request.getParameter("a"); 
String status="Accepted";
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("update fkey set status=? where fid=?");
	ps.setString(1,status);
	ps.setString(2,r);
	ps.executeUpdate();
response.sendRedirect("oskp.jsp?Accepted Successful");

%>