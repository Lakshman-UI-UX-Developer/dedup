<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%@ page import="java.sql.*,java.util.*"%>
<%
try
{
	Connection con=DB.getconn();
	int x=(int)(Math.random()*10000);
	String fkey=Integer.toString(x);
	String a=request.getParameter("a");
	String fid=request.getParameter("r");
	
	{
		PreparedStatement ps=con.prepareStatement("update fkey set status=?,sk=?,gkey=? where fid=?");
		ps.setString(1, "Accepted");
		ps.setString(2, fkey);
		ps.setString(3, "success");
		ps.setString(4, fid);
		
		ps.executeUpdate();
	}
	response.sendRedirect("cokg1.jsp?msg=Key Generated successfully for Accepted requests");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>