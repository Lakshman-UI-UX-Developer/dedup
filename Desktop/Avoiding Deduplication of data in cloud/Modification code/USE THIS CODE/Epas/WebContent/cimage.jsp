<%@page import="java.sql.*"%>
<%@page import="connection.DB"%>
<%
	String msg = request.getParameter("msg");
	try {
		Connection con = DB.getconn();
		PreparedStatement ps = con
				.prepareStatement("select * from image");
		ResultSet rs = ps.executeQuery();
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
			<li><a href="chome.jsp">home</a></li>
			<li><a href="cvu.jsp">View Users</a></li>
			<li><a href="cvo.jsp">View Owners</a></li>
			<li ><a href="cmp.jsp">View Upload Files</a></li>
			<li class="selected"><a href="cimage.jsp">View Upload Images</a></li>
			<li><a href="rdf.jsp">Deduplication</a></li>
			<li>
				<a href="crdf.jsp">Deduplication Images</a>
			</li>
			<li><a href="index.html">Logout</a></li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center>
				<%
					if (msg != null) {
				%>
				<%=msg%>
				<%
					}
				%>
				<h3>View Uploaded Files</h3>
				<h2>&nbsp;</h2>
				<table>

					<tr>
						<th>Owner Name</th>
						<th>Fid</th>
						<th>File Name</th>
						
						<th>Status</th>
						<th>Verify</th>
						<!-- <th>block2 Verify</th>
			<th>block3 verify</th>
			 -->
					</tr>
					<tr>
						<%
							while (rs.next()) {
						%>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>

						<td><%=rs.getString(7)%></td>
						<%--<td><a href="cmp2.jsp?a=<%=rs.getString(2)%>&&block=1">Verify</a></td>
			 			<td><a href="cmp2.jsp?a=<%=rs.getString(2)%>&&block=2">Verify</a></td> --%>
						<td><a href="cverify.jsp?a=<%=rs.getString(1)%>&&fid=<%=rs.getString(3)%>">Verify</a></td>
					</tr>

					</tr>
					<%
						}
						} catch (Exception e) {
							out.println(e);
						}
					%>
				</table>
			</center>
			<h2>&nbsp;</h2>

			<h2></h2>
			<h2>&nbsp;</h2>
		</div>
	</div>
	<div id="footer">

		<p></p>
	</div>
</body>
</html>