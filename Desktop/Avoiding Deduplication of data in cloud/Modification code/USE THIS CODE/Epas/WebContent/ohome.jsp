<%String msg=request.getParameter("msg"); %>
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
			<li class="selected">
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
			<li>
				<a href="ovf.jsp">View Files</a>
			</li>
			<li>
				<a href="vdf.jsp">View Deduplication Files</a>
			</li>
			<li class="selected">
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
			<p><center><%if(msg!=null){ %>
			<%=msg %>
			<%} %></center></p>
			<h2>&nbsp;</h2>
			
			<center><h3>Owner Home Page</h3></center>
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