<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String r=request.getParameter("r"); 
String a=request.getParameter("a"); 
String status="Rejected";
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("update fkey set status=? where fid=?");
	ps.setString(1,status);
	ps.setString(2,a);
	ps.executeUpdate();
response.sendRedirect("oskp.jsp?Rejected Successful");

%>