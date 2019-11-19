<%@page import="java.sql.*"%>
<%@page import="connection.DB" %>
<%String a=request.getParameter("a");
out.print(a);
String b=request.getParameter("b");
String status="Sent for deduplication";
try
{
	Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("Update file set status=? where fid=?");
	ps.setString(1,status);
	ps.setString(2, a);
	ps.executeUpdate();
	response.sendRedirect("cmp.jsp?msg=successfully sent for deduplication");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>