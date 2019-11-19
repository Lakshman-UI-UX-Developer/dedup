<%@page import="java.sql.*"%>
<%@page import="connection.DB" %>
<%String a=request.getParameter("a");
String status="Uploaded in csp";
try
{
	Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("Update file set status=? where fid=?");
	ps.setString(1,status);
	ps.setString(2, a);
	ps.executeUpdate();
	response.sendRedirect("cmp.jsp?Uploaded Successful");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>


