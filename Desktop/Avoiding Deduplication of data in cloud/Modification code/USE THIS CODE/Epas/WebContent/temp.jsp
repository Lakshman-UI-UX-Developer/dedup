<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*"  %>

<%
	
	
	Blob file= null;
	
	String fname=(String)session.getAttribute("fname");
	
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
		Connection con=null;
	 sql = "select AES_DECRYPT(fname,'key') from upload where fname=?";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edm","root","root");
		ps = con.prepareStatement(sql);
		ps.setString(1, fname);
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
		session.setAttribute("resumeBlob",file);
		 response.sendRedirect("download1.jsp");
	}
	catch(Exception e)
	{
	
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	



	%>
