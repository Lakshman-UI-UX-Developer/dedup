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
			<li>
				<a href="index.html">home</a>
			</li>
			<li>
				<a href="owner.jsp">Data Owner</a>
			</li>
			<li>
				<a href="user.jsp">User</a>
			</li>
			<li class="selected">
				<a href="csp.jsp">CSP</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<p><center><%if(msg!=null){ %>
			<%=msg %>
			<%} %></center></p>
			<center><h3>CSP Login</h3></center>
			<h2>&nbsp;</h2>
			
			<form action="csp1.jsp" method="post">
				<label for="fullName"> <span>CSP Name:</span>
					<input type="text" name="name" id="fullName">
				</label>
				<label for="emailAdd"> <span>Password:</span>
					<input type="password" name="pswd" id="emailAdd">
				</label>
				<input type="submit" id="send" value="Submit">
				<input type="reset" id="send" value="Reset">
			</form>
			<h2>&nbsp;</h2>
		</div>
	</div>
	<div id="footer">
		
		<p>
			
		</p>
	</div>
</body>
</html>