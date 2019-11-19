<%String mes=request.getParameter("mes"); %>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>EPAS:</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<script>
function val()
{

	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mobno = /^\d{10}$/;
	var letters = /^[A-Za-z]+$/;
	var idno = /^\d{1}$/;
	
	var name = document.reg.name.value;
	if(name == "")
	{ 	alert("Please enter first name");
		document.reg.name.focus();
		flag=0;	
		return false;
	}else  if(!name.match(letters))
	{
		document.reg.name.focus();
		alert("Please enter only alphabets");
		flag=0;
		return false;
	}else
	{
		flag=1;
	}
	
	var pswd = document.reg.pswd.value;
	if(pswd == "")
	{ 	alert("Please enter password");
		document.reg.pswd.focus();
		flag=0;	
		return false;
	}else
	{
		flag=1;
	}
	var email = document.reg.email.value;
	if(email=="")
	{
		document.reg.email.focus();
		alert("Please enter Email");
		flag=0;
		return false;
	}else  if (!(document.reg.email.value.match(mailformat))) 
	{
		alert('Please provide a valid email address');
		document.reg.email.focus();
		flag=0;
		return false;
	}else
	{
		flag=1;
	}
	  var phone = document.reg.phone.value;
		if(phone=="")
		{
			document.reg.phone.focus();
			alert("Please enter your number");
			flag=0;
			return false;
		}else if(!(phone.match(mobno)))
		{
			document.reg.phone.focus();
			alert("Please enter valid number");
			flag=0; 
			return false;
		}else
		{
			flag=1;
		}	
		
	var address = document.reg.address.value;
	if(address == "")
	{ 	alert("Please enter your address");
		document.reg.address.focus();
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
			<center><h3>User Registration</h3></center>
			<p><center>
			<%
			if(mes!=null){
			%>
			<%=mes%>
			<%} %>
			</center></p>
			<form action="backend.jsp" method="post" name="reg" onsubmit="return val()">
				<label for="fullName"> <span>User Name:</span>
					<input type="text" name="name" id="fullName">
				</label>
				<label for="emailAdd"> <span>Password:</span>
					<input type="password" name="pswd" id="emailAdd">
				</label>
				<label for="emailAdd"> <span>E-Mail:</span>
					<input type="text" name="email" id="emailAdd">
				</label>
				<label for="emailAdd"> <span>Phone:</span>
					<input type="text" name="phone" id="emailAdd" maxlength="10">
				</label>
				<label for="emailAdd"> <span>Address:</span>
					<textarea type="text" name="address" id="emailAdd" rows="3" cols="10"></textarea>
				</label>
				
				<input type="submit" id="send" value="User Registration" name="reg">
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