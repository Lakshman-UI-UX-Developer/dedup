<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String email=request.getParameter("a"); 
String status="Accepted";
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("update oreg set status=? where email=?");
	ps.setString(1,status);
	ps.setString(2,email);
	ps.executeUpdate();
response.sendRedirect("cvo.jsp?Accepted Successful");

%>