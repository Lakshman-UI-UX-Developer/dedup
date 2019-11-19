<%String msg=request.getParameter("msg"); %>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>EPAS:</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
<Script>
function val()
{

	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mobno = /^\d{10}$/;
	var letters = /^[A-Za-z]+$/;
	var idno = /^\d{1}$/;
	
	var search = document.reg.search.value;
	if(search == "")
	{ 	alert("Please enter file name");
		document.reg.search.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	
	
	
	if(flag==0)
	{
		return false;
	}else
	{
		return true;
	}
	
}
</script>
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
			<li class="selected">
				<a href="sf.jsp">Search Files</a>
			</li>
			<li>
				<a href="uvf.jsp">View Files</a>
			</li>
			<li>
				<a href="cuvf.jsp">View Images</a>
			</li>
			<li>
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
			<center><h3>User Login</h3></center>
			<p><center>
			<%
			if(msg!=null){
			%>
			<%=msg%>
			<%} %>
			</center></p>
			
			<form action="vf.jsp" method="post" name="reg" onsubmit="return val()">
				<label for="fullName"> <span>Search for file:</span>
					<input type="text" name="search" id="fullName">
				</label>
				<input type="submit" id="send" value="Search" name="reg">
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