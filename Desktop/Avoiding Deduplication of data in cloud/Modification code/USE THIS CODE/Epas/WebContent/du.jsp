<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<%
Random rand = new Random();
int n = rand.nextInt(90) + 100;
System.out.println(n);
%>

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
	
	
	var fid = document.reg.fid.value;
	if(fid == "")
	{ 	alert("Please enter file id");
		document.reg.fid.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	
	var fname = document.reg.fname.value;
	if(fname == "")
	{ 	alert("Please enter file name");
		document.reg.fname.focus();
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
			<center>
		<FORM  ACTION="dummy.jsp" METHOD=POST>
<br><br><br>


<tr><td><b>Choose the file To Upload:</b>
</td>
<td><INPUT NAME="file" TYPE="file"></td></tr>

<tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="Send File" ></p></td></tr>
<table>
</center>
</FORM>
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