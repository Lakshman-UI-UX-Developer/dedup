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
			<li class="selected">
				<a href="user.jsp">User</a>
			</li>
			<li>
				<a href="csp.jsp">CSP</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>User Login</h3></center>
			<p><center><%if(msg!=null){ %>
			<%=msg %>
			<%} %></center></p>
			
			<form action="backend.jsp" method="post">
				<label for="fullName"> <span>User E-Mail:</span>
					<input type="text" name="email" id="fullName">
				</label>
				<label for="emailAdd"> <span>Password:</span>
					<input type="password" name="pswd" id="emailAdd">
				</label>
				<input type="submit" id="send" value="User Login" name="reg">
				<input type="reset" id="send" value="Reset">
			</form>
			
			<h2>&nbsp;</h2>
			<center><h3><a href="ureg.jsp">Registration</a></h3></center>
		</div>
	</div>
	<div id="footer">
		
		<p>
			&copy; Copyright 2016. All rights reserved.
		</p>
	</div>
</body>
</html>