<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String r=request.getParameter("r"); 
out.print(r);
String a=request.getParameter("a"); 
String req="Accept";
String status="de-duplication image";
%>
<%
Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("update image set request=? where status='"+status+"'&&fid=?");
	ps.setString(1,req);
	ps.setString(2,r);
	ps.executeUpdate();
response.sendRedirect("cvdf.jsp?msg=Accepted Successful");

%>