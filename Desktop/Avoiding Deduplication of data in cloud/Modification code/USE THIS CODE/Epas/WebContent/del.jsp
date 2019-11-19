<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String email=request.getParameter("a"); 
String d=request.getParameter("d"); 
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("delete from file where fname=?");
	ps.setString(1,d);
	ps.executeUpdate();
response.sendRedirect("rdf.jsp?Performed Deduplication Successfully");

%>