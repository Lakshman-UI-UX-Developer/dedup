<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String email=(String)session.getAttribute("email"); %>
<%
String pp=null;
String on=null;
String fid=null;
String status="Uploaded in csp";
try
{
	String t=null;
	Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("select * from file where status='"+status+"'");
	ResultSet rs=ps.executeQuery();
	
%>
<%String msg=request.getParameter("msg");%>
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
			<li>
				<a href="sf.jsp">Search Files</a>
			</li>
			<li class="selected">
				<a href="uvf.jsp">View Files</a>
			</li>
			<li>
				<a href="cuvf.jsp">View Images</a>
			</li>
			<li>
				<a href="us.jsp">Status</a>
			</li>
			<li>
				<a href="download.jsp">Download Files</a>
			</li>
			<li>
				<a href="cus.jsp">Image Status</a>
			</li>
			<li>
				<a href="cdownload.jsp">Download Images</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<p><center> <%if(msg!=null){ %>
			<%=msg%>
			<%} %></center></p>
			<center><h3>View Files</h3></center>
			<h2>&nbsp;</h2>
			<center>
			<form >
			<table>
				<tr>
				<td>file id</td>
				<td>Owner name</td>
				<td>File name</td>
				<td>File Data</td>
				<td>Send Request</td>
				</tr>
			
			
			<%while(rs.next())
			{
				fid=rs.getString(2);
				pp=rs.getString("fname");
				 on=rs.getString("oname");
				Blob upload = rs.getBlob("file");
				byte [] b= upload.getBytes(1,(int)upload.length());
				t=new String(b);
				%>
				
				<tr>
				<td><%=fid %>
				<td><%=on%></td>
				<td><%=pp%></td>
				<td><%=t%></td>
				<td><a href="view.jsp?a=<%=rs.getString("fname")%>&&b=<%=rs.getString("oname")%>&&c=<%=rs.getString("fid")%>">Send Request</a></td>
				</tr>
			<%} %>
			
			</table>
			
			
			
			<%
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}%>
			</form>
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