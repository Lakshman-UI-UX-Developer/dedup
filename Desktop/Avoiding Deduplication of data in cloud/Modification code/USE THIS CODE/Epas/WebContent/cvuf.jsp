<%@page import="java.sql.*"%>
<%@page import="connection.DB" %>
<% 
String msg=request.getParameter("msg");
try
{
Connection con=DB.getconn();
PreparedStatement ps=con.prepareStatement("select * from upload");
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
				<a href="chome.jsp">home</a>
			</li>
			<li>
				<a href="cvu.jsp">View Users</a>
			</li>
			<li>
				<a href="cvo.jsp">View Owners</a>
			</li>
			<li class="selected">
				<a href="cvuf.jsp">View Upload Files</a>
			</li>
			<li>
				<a href="rdf.jsp">Deduplication</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center>
			<%if(msg!=null){ %>
			<%=msg %>
			<%} %>
			<h3>View Uploaded Files</h3>
			<h2>&nbsp;</h2>
			<table>
			
			<tr><th>Owner Name</th>
			<th>Fid</th>
			<th>File Name</th>
			<th>Upload</th>
			<th>Date</th>
			<th>Filesize</th>
			<th>Status</th>
			<th>Verify</th>
			</tr>
			<tr><%while(rs.next()){ %>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><a href="verify.jsp?a=<%=rs.getString(2)%>">Verify</a></td>
			 </tr>
			
			</tr>
			<%} 
}
			catch(Exception e)
			{
			out.println(e);
			}%>
			</table></center>
			<h2>&nbsp;</h2>
			
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