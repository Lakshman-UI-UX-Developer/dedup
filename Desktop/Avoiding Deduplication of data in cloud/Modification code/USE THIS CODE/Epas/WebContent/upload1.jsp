   <%String msg = request.getParameter("msg"); %>
<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<%

String fid=request.getParameter("fid");
session.setAttribute("fid",fid);
String fname=request.getParameter("fname");
session.setAttribute("fname",fname);
String date=request.getParameter("date");
System.out.println(date);
session.setAttribute("date",date);
String oname=(String)session.getAttribute("oname");
out.println(oname);

%>

<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Avoiding Dedupilcation of Data in Cloud</title>
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
			<li class="selected">
				<a href="ouf.jsp">Upload Files</a>
			</li>
			<li>
				<a href="ovf.jsp">View Files</a>
			</li>
			<li>
				<a href="vdf.jsp">View Deduplication Files</a>
			</li>
			<li>
				<a href="oskp.jsp">User Request</a>
			</li>
			<li>
				<a href="okg.jsp">Key Generate</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>Upload File</h3></center>
			<h2>&nbsp;</h2>
			<form  action="upload2.jsp" method="post" enctype="multipart/form-data">
				<label for="fullName"> <span>Id:</span>
					<input type="text" name="fid" id="fullName" value="<%=fid%>">
				</label>
				<label for="emailAdd"> <span>Name:</span>
					<input type="text" name="fname" id="emailAdd" value="<%=fname%>">
				</label>
				<label for="emailAdd"> <span>Date:</span>
					<input type="text" value="<%=date%>" size="50" />
				</label>
				<label for="emailAdd"> <span>Upload File:</span>
					<input type="file" name="file" size="50" />
				</label>
				
				<input type="submit" id="send" value="Upload File" name="reg">
				<input type="reset" id="send" value="Reset">
			</form>
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