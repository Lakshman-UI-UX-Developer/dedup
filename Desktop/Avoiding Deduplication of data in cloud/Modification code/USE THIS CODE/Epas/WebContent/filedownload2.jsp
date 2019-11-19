<%@page import="java.sql.*" %>
<%@page import="java.sql.*"%><%@page import="java.io.*"%><%@page import="javax.servlet.*"%>


<% String fname=(String)session.getAttribute("fname");
String fid=(String)session.getAttribute("fid");
System.out.print(fid);%>
<%
	
ServletOutputStream output = response.getOutputStream();
	
	try {
		String t = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/edm", "root", "root");
		
		  
		
		PreparedStatement ps = con.prepareStatement("select AES_DECRYPT(block1, 'key'),AES_DECRYPT(block2, 'key'),AES_DECRYPT(block3, 'key') from  file where fname=?");
		//PreparedStatement ps = con.prepareStatement("select AES_DECRYPT(block1,block2,block3 'key') from file where fname=?");
		ps.setString(1,fname);
		ResultSet rs = ps.executeQuery();
		rs.next();
		String mes=rs.getString(1)+rs.getString(2)+rs.getString(3);
		byte requestBytes[] = mes.getBytes();
		ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
		response.reset();
		response.setContentType("mime/text");
		response.setHeader("Content-disposition","attachment; filename=" +"file.text");
		byte[] buf = new byte[1024];
		int len;
		while ((len = bis.read(buf)) > 0){
		output.write(buf, 0, len);
		}
		bis.close();
		response.getOutputStream().flush();
		
%>


<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>EPAS: </title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="header">
		<div>
			<a href="index.html" class="logo">
			<h2>Avoiding Dedupilcation of Data in Cloud</h2>
			</a>
		</div>
		<ul>
			<li>
				<a href="uhome.jsp">home</a>
			</li>
			<li>
				<a href="vpd.jsp">View Profile Details</a>
			</li>
			<li>
				<a href="sf.jsp">Search Files</a>
			</li>
			<li>
				<a href="uvf.jsp">View Files</a>
			</li>
			<li>
				<a href="us.jsp">Status</a>
			</li>
			<li class="selected">
				<a href="download.jsp">Download Files</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>Download Files</h3></center>
			<h2>&nbsp;</h2>
			<center>
			
			
			
			<%
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}%>
			<h2></h2>
			<h2>&nbsp;</h2>
		</div>
	</div>
	<div id="footer">
		
		<p>
			
		</p>
	</div>
</body>
</html>