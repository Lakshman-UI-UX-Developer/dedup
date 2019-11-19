<%@page import="java.sql.*"%>
<%@page import="connection.DB" %>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<% String s=request.getParameter("a");
String s1=null;
String s2=null;
try
{
Connection con=DB.getconn();
PreparedStatement ps=con.prepareStatement("select fname from upload where fname!=?");
ps.setString(1,s);
ResultSet rs=ps.executeQuery();
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
			<li>
				<a href="chome.jsp">home</a>
			</li>
			<li>
				<a href="cvu.jsp">View Users</a>
			</li>
			<li>
				<a href="cvo.jsp">View Owners</a>
			</li>
			<li class="selected">
				<a href="cvuf.jsp">View Upload Files</a>
			</li>
			<li>
				<a href="rdf.jsp">Deduplication</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
		</ul>
	</div>
	<div id="body">
		<div class="content">
			<h2>&nbsp;</h2>
			<center><h3>View Uploaded Files</h3>
			<h2>&nbsp;</h2>
			<table>
			<tr>
			<th>Comparing file</th>
			<th>Verifying file</th>
			<th>Status</th>
			</tr>
			
			
			  <%
			  StringBuffer sb=new StringBuffer();
			  File file1 = new File("C:/Users/SaratKumar/Desktop/"+s+".txt");
			  System.out.println("present text:" +s);
		while(rs.next())	 
		{
        File file2 = new File("C:/Users/SaratKumar/Desktop/"+rs.getString(1)+".txt");
       System.out.println("previous text:" +rs.getString(1));

        boolean compare1and2 = FileUtils.contentEquals(file1, file2);
        if(compare1and2==true)
        {
        	s2=rs.getString(1);
       }
        sb.append(compare1and2+"@");
        %>
        <tr>
			<td><%=s %></td>
        <td><%=rs.getString(1) %></td>
        <td><%=compare1and2 %></td></tr>

        <%System.out.println("Are    "+s+" and   "+rs.getString(1) +"  "+ compare1and2);
        
        }
		%></table>
		
		
		<%
         s1=sb.toString();
         if(s1.contains("true"))
         {%>
         <center><a href="csd1.jsp?a=<%=s%>&b=<%=s2%>">Click submit to send file for deduplication</center>
         <%}else{%>
        <center><a href="csd.jsp?a=<%=s%>">Click here to upload file in csp</a></center> 
           <%       }
         
        %>
		
					
		</div>
	</div>
	<div id="footer">
		
		<p>
			&copy; Copyright 2016. All rights reserved.
		</p>
	
<%	}catch(Exception e)
	{
	e.printStackTrace();
	}%></div>
</body>
</html>