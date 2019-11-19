<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String email=request.getParameter("a"); 
String d=request.getParameter("d"); 
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("delete from image where fid=?");
	ps.setString(1,d);
	ps.executeUpdate();
response.sendRedirect("crdf.jsp?msg=Performed Deduplication Successfully");

%>