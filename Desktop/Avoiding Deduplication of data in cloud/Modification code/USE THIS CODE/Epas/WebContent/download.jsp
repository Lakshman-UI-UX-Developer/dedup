<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%String name=(String)session.getAttribute("name"); %>
<%
String status="Accepted";
try
{
	String t=null;
	Connection con=DB.getconn();
	PreparedStatement ps=con.prepareStatement("select * from fkey where uname=?&&status='"+status+"'");
	ps.setString(1,name);
	
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
			<li>
				<a href="sf.jsp">Search Files</a>
			</li>
			<li>
				<a href="uvf.jsp">View Files</a>
			</li>
			<li>
				<a href="cuvf.jsp">View Images</a>
			</li>
			<li>
				<a href="us.jsp">Status</a>
			</li>
			<li class="selected">
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
			<h2>&nbsp;</h2>
			<center><h3>Download Files</h3></center>
			<h2>&nbsp;</h2>
			<center>
			<form >
			
			<table>
			<tr>
			<th>User Name</th>
			<th>Owner Name</th>
			<th>File Name</th>
			<th>Key</th>
			<th>Status</th>
			<th>Download File</th>
			</tr>
			
			<%while(rs.next())
			{
				%><tr><td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><a href="down.jsp?k=<%=rs.getString(4)%>&&fname=<%=rs.getString(3)%>">Download File</a></td>
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
			
		</p>
	</div>
</body>
</html>