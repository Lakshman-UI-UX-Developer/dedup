<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%

String req="Accept";
try
{
Connection con=DB.getconn();
PreparedStatement ps=con.prepareStatement("select * from file where request='"+req+"' ");
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
			<li>
				<a href="cmp.jsp">View Upload Files</a>
			</li>
			<li>
				<a href="cimage.jsp">View Upload Images</a>
			</li>
			<li class="selected">
				<a href="rdf.jsp">Deduplication</a>
			</li>
			<li>
				<a href="crdf.jsp">Deduplication Images</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>Delete Duplicate Files</h3>
			<h2>&nbsp;</h2>
			<center><table>
			<tr>
			<th>Owner Name</th>
			<th>Fid</th>
			<th>Fname</th>
			<th>Upload File</th>
			<th>Date</th>
			<th>File Size</th>
			<th>Delete</th>
			</tr>
			<%while(rs.next()){ %>
			<tr>
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><a href="del.jsp?d=<%=rs.getString(3) %>">Delete</a></td>
			</tr><%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>
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