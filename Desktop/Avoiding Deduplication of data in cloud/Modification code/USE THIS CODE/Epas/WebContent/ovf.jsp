<%@page import="java.sql.*" %>
<%@page import="connection.DB" %>
<%
String msg = request.getParameter("msg");
String email=(String)session.getAttribute("email");
String oname=(String)session.getAttribute("oname");
try
{
Connection con=DB.getconn();
PreparedStatement ps=con.prepareStatement("select * from file where oname=?");
ps.setString(1, oname);
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
				<a href="ohome.jsp">home</a>
			</li>
			<li>
				<a href="ovp.jsp">View Profile</a>
			</li>
			<li>
				<a href="try.jsp">Upload Files</a>
			</li>
			<li>
				<a href="try2.jsp">Upload Image</a>
			</li>
			<li class="selected">
				<a href="ovf.jsp">View Files</a>
			</li>
			<li>
				<a href="vdf.jsp">View Deduplication Files</a>
			</li>
			<li >
				<a href="cvdf.jsp">View Deduplication Images</a>
			</li>
			<li>
				<a href="oskp.jsp">User Request</a>
			</li>
			<li>
				<a href="coskp.jsp">Image Request</a>
			</li>
			<li>
				<a href="okg.jsp">Key Generate</a>
			</li>
			<li>
				<a href="cokg.jsp">Key Generate for Image</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>View File</h3></center>
			<%
				if(msg!=null)
				{
					%>
					<center><%=msg%></center>
					<%
					
				}
			
			
			%>
			<h2>&nbsp;</h2>
			<center><table>
			<tr>
			<th>Owner Name</th>
			<th>Fid</th>
			<th>Fname</th>
			<th>block1</th>
			<th>block2</th>
			<th>block3</th>
			<th>Status</th>
			
			
			</tr>
			<%while(rs.next()){ %>
			<tr>
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(9) %></td>
			
			
			</tr><%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>
			</table></center>
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