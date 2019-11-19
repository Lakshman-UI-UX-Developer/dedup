<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>


<%
	String fid = request.getParameter("fid");
	String a = request.getParameter("a");
	int hash =0;
	String hash1 = "";
	String aa = "Not uploaded in csp";
	ArrayList al = new ArrayList();
	String sql = "select count(hashvalue) from image";
		/* String sql1 = "select hashvalue from image where fid!='" + fid
				+ "'"; */
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/edm", "root", "root");
	PreparedStatement ps1 = con.prepareStatement(sql);
	ResultSet rs1 = ps1.executeQuery();
	while (rs1.next()) {
		hash = rs1.getInt(1);
	}
	String status = "Uploaded in csp";
	String status1 = "de-duplication image";
	if(hash==1)
	{
		String sql2 = "update image set status='" + status
				+ "' where fid='" + fid + "'";
		PreparedStatement ps2 = con.prepareStatement(sql2);
		ps2.executeUpdate();
		response.sendRedirect("cimage.jsp?msg=uploaded in csp");
		
	}
	else
	{
		String sql3 = "update image set status='" + status1
				+ "' where fid='" + fid + "'";
		PreparedStatement ps3 = con.prepareStatement(sql3);
		ps3 .executeUpdate();
		response.sendRedirect("cimage.jsp?msg=deduplication image");
	}
	
%>