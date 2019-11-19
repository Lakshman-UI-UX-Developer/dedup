<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String search=request.getParameter("search"); %>
<%

out.print(search);
String t=null;
String pp=null;
String status="Uploaded in csp";
try
{
	Connection con=DB.getconn();
	
	PreparedStatement ps=con.prepareStatement("select * from file where fname like '"+search+"%' and status='"+status+"'");
	
	ResultSet rs=ps.executeQuery();
	
%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>EPAS:</title>
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
			<li class="selected">
				<a href="sf.jsp">Search Files</a>
			</li>
			<li>
				<a href="uvf.jsp">View Files</a>
			</li>
			<li>
				<a href="us.jsp">Status</a>
			</li>
			<li>
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
			<center><h3>View Profile Details</h3></center>
			<h2>&nbsp;</h2>
			<center>
			<table>
			<tr>
			<th>File Id</th>
			<th>File Name</th>
			
			<th>Send request</th>
			</tr>
			
			
			<%while(rs.next())
			{
				
				%>
				<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString("fname") %></td>
			<td><a href="view.jsp?a=<%=rs.getString("fname")%>&&b=<%=rs.getString("fid")%>">Send Request</a></td>
			<%} %>
			
			</tr>
			<%
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}%>
			</table>
			</center>
			<h2></h2>
			<h2>&nbsp;</h2>
		</div>
	</div>
	<div id="footer">
		
		<p>
			&copy; Copyright 2016. All rights reserved.
		</p>
	</div>
</body>
</html>