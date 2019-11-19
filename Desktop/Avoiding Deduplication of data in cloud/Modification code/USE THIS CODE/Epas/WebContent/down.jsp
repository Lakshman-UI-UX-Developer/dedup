
<%@page import="java.sql.*" %>
<%String k=request.getParameter("k");
session.setAttribute("k",k);
String fname=request.getParameter("fname");
session.setAttribute("fname",fname);
%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>EPAS: </title>
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
			<li class="selected">
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
			<h2>&nbsp;</h2>
			<center><h3>Download Files</h3></center>
			<h2>&nbsp;</h2>
			<center>
			<form  action="down1.jsp" method="post">
				<label for="fullName"> <span>Enter Key:</span>
					<input type="text" name="key" id="fullName">
				</label>
				<input type="submit" value="Download" name="Download">
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