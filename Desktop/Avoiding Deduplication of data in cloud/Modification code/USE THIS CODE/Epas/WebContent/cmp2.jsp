<%@page import="java.sql.*"%>
<%@page import="connection.DB"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%!String contant;%>
<%
	String s = request.getParameter("a");
	String id1 = request.getParameter("block");
	System.out.println(s);
	System.out.println(id1);
	//out.print(id1);
	session.setAttribute("block", id1);
	String block;
	if (id1.equals("1")) {
		block = "block1";
	} else if (id1.equals("2")) {
		block = "block2";
	} else {
		block = "block3";
	}
	//out.print(s);
	String s1 = null;
	String s2 = null;
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
			<li class="selected"><a href="cmp.jsp">View Upload Files</a></li>
			<li><a href="rdf.jsp">Deduplication</a></li>
			<li><a href="index.html">Logout</a></li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center>
				<h3>View Uploaded Files</h3>
				<h2>&nbsp;</h2>
				<%!int count = 0;%>
				<%
					try {

						Connection con = DB.getconn();
						PreparedStatement ps = con
								.prepareStatement("select AES_DECRYPT(" + block
										+ ", 'key') from file where fid ='" + s + "'");
						ResultSet rs = ps.executeQuery();
						rs.next();
						contant = rs.getString(1);
						System.out.println(contant);
						PreparedStatement pst = con
								.prepareStatement("select AES_DECRYPT(" + block
										+ ", 'key') from file where fid!='" + s + "' ");
						ResultSet rs1 = pst.executeQuery();
						if (rs1.next()) {
							System.out.println(rs1.getString(1));

							do {
								if (rs1.getString(1).equals(contant)) {
									count++;
									System.out.println(count);
									break;
								}

							} while (rs1.next());

						}
						out.print(count);
						if (count == 1) {
				%>
				<%
					out.println("duplicate");
				%>
				<center>
					<a href="csd1.jsp?a=<%=s%>">Click submit to send file for
						deduplication
				</center>

				<%
					} else {
				%>
				<br>
				<br>
				<br> <i>
					<%
						out.println("data is verified no duplication found");
					%>
				</i> <br>
				<br>
				<center>
					<a href="csd.jsp?a=<%=s%>">Click here to upload file in csp</a>
				</center>
				<%
					}
						count = 0;
				%>
			
		</div>
	</div>
	<div id="footer">

		<p></p>

		<%
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>
</body>
</html>