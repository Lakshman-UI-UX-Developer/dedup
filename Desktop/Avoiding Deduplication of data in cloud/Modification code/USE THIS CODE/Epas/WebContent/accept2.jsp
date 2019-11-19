<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String r=request.getParameter("r"); 
out.print(r);
String a=request.getParameter("a"); 
String req="Accept";
String status="Sent for deduplication";
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("update file set request=? where status='"+status+"'&&fname=?");
	ps.setString(1,req);
	ps.setString(2,r);
	ps.executeUpdate();
response.sendRedirect("vdf.jsp?msg=Accepted Successful");

%>