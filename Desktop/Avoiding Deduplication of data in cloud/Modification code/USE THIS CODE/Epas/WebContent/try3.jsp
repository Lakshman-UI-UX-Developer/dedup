
<%
	String msg = request.getParameter("msg");
%>
<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%!StringBuffer sb = new StringBuffer();

	StringBuffer sb1 = new StringBuffer();
	StringBuffer sb2 = new StringBuffer();
	int a;%>
<%
	out.print(request.getParameter("file"));
	int i = 0;

	try {
		String line;
		File file = new File("C:/Users/SaratKumar/Desktop/"
				+ request.getParameter("file"));
		session.setAttribute("file", request.getParameter("file"));
		
		System.out.println(session.getAttribute("file").toString());
		
		FileReader fr = new FileReader(file);
		BufferedReader bufferedReader = new BufferedReader(fr);
		ArrayList a = new ArrayList();

		while ((line = bufferedReader.readLine()) != null) {

			String lineWords[] = line.split(" ");

			for (String singleWord : lineWords) {

				a.add(singleWord);

			}

		}

		for (int j = 0; j < a.size() / 3; j++) {

			sb.append(a.get(j));
			sb.append(" ");
			session.setAttribute("sb", sb);
		}

		for (int j = a.size() / 3; j < a.size() * 2 / 3; j++) {

			sb1.append(a.get(j));
			sb1.append(" ");
			session.setAttribute("sb1", sb1);
		}

		for (int j = a.size() * 2 / 3; j < a.size(); j++) {

			sb2.append(a.get(j));
			sb2.append(" ");
			session.setAttribute("sb2", sb2);
		}

	} catch (Exception exception) {

		System.out.println("IOException occured");
		exception.printStackTrace();

	}
%>
<%
	String fid = request.getParameter("fid");
	session.setAttribute("fid", fid);
	String fname = request.getParameter("fname");
	session.setAttribute("fname", fname);
	String date = request.getParameter("date");
	System.out.println(date);
	session.setAttribute("date", date);
	String oname = (String) session.getAttribute("oname");
	//out.println(oname);
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
			<li><a href="ohome.jsp">home</a></li>
			<li><a href="ovp.jsp">View Profile</a></li>
			<li class="selected"><a href="ouf.jsp">Upload Files</a></li>
			<li><a href="ovf.jsp">View Files</a></li>
			<li><a href="vdf.jsp">View Deduplication Files</a></li>
			<li><a href="oskp.jsp">User Request</a></li>
			<li><a href="okg.jsp">Key Generate</a></li>
			<li><a href="index.html">Logout</a></li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center>
				<h3>Upload File</h3>
			</center>
			<h2>&nbsp;</h2>
			<form action="upload3.jsp">
				<label for="fullName"> <span>Id:</span> <input type="text"
					name="fid" id="fullName" value="<%=fid%>">
				</label> <label for="emailAdd"> <span>Name:</span> <input
					type="text" name="fname" id="emailAdd" value="<%=fname%>">
				</label> <label for="emailAdd"> <span>Date:</span> <input
					type="text" value="<%=date%>" size="50" />
				</label>

				<tr>
					<center>
						<td colspan="2"><p align="center">
								<B>fname <%=request.getParameter("file")%>
									<tr>
										<th><b>block1 <br>
											<br>
											<br></b></th>

										<td><textarea rows="5" cols="60" name="t1"><%=sb%></textarea><br>
										<br>
										<br></td>
										<td></td></td>
				</tr>
				<tr>
					<th><b>block2 <br>
						<br>
						<br></b></th>

					<td><textarea rows="5" cols="60" name="t2"><%=sb1%></textarea><br>
					<br>
					<br></td>
					<td></td>
				<tr>
					<th><b>block3 <br>
						<br>
						<br></b></th>

					<td><textarea rows="5" cols="60" name="t3"><%=sb2%></textarea><br>
					<br>
					<br></td>
					<td></td>

					</td>
					<td></td>
				</tr>
				<%
					sb.delete(0, sb.length());
					sb1.delete(0, sb1.length());
					sb2.delete(0, sb2.length());
				%>
				<tr>
					<td colspan="2">
						<p align="right">
							<INPUT TYPE="submit" VALUE="Send File" name="table">
						</p>
					</td>
				</tr>
			</form>
			<table>


				<h2></h2>
				<h2>&nbsp;</h2>
				</div>
				</div>
				<div id="footer">

					<p></p>
				</div>
</body>
</html>