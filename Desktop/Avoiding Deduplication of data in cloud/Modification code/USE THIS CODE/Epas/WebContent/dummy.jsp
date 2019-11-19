<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
    <%@page import="java.util.ArrayList"%>
	<%@page import="java.util.HashMap"%>
	<%@page import="java.security.MessageDigest" %>
    <%@page import="java.security.NoSuchAlgorithmException" %>
<%! StringBuffer sb =new StringBuffer();

  StringBuffer sb1 =new StringBuffer();
  StringBuffer sb2 =new StringBuffer();
  int a;
  %>
<%

out.print(request.getParameter("file"));
int i=0;



try {            
    String line;
   File file = new File("C:/Users/Surekha/Desktop/"+request.getParameter("file"));
   session.setAttribute("file", request.getParameter("file"));
    FileReader fr = new FileReader(file);
    BufferedReader bufferedReader = new BufferedReader(fr);
    ArrayList a=new ArrayList(); 

    while((line = bufferedReader.readLine()) != null) {

        String lineWords[] = line.split(" ");
        
        for(String singleWord:lineWords) {

           a.add(singleWord) ; 
           
        }
        
       
    }
    
 
  
  for(int j=0;j<=a.size()/3;j++){
	  
	  sb.append(a.get(j));
	  sb.append(" ");
	  session.setAttribute("sb",sb);
  }
    
    for(int j=a.size()/3;j<=a.size()*2/3;j++){
  	  
  	  sb1.append(a.get(j));
  	  sb1.append(" ");
  	 session.setAttribute("sb1",sb1);
    }
     
      for(int j=a.size()*2/3;j<a.size();j++){
      	  
      	  sb2.append(a.get(j));
      	  sb2.append(" ");
      	session.setAttribute("sb2",sb2);
        }
         
  
   
} catch(Exception exception) {

    System.out.println("IOException occured");
    exception.printStackTrace();

}

   %>
   
   
   <!DOCTYPE HTML>
<!--
	Elemental by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Elemental by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/aes.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
	</head>
	<body class="homepage" >
	
	






	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
						
					</div>
			</div>
			<div id="nav-wrapper" class="container">
				
					
			</div>
			
		</div>
	<!-- Header -->
	<FORM  name="vinform" action="backend.jsp">	

	<!-- Main -->
		<div id="main">
		<% 
		
		a=(int) (Math.random() * 100000);
		
		session.setAttribute("key", a);
		%>
		<center>
		
<br><br><br>
<center><table border="2" >
<FORM  ACTION="upload2.jsp" METHOD=POST>
<tr><center><td colspan="2"><p align="center"><B>UPLOAD THE FILE</B><center></td></tr>
<tr><center><td colspan="2"><p align="center"><B>file <%=request.getParameter("file") %>
<tr><th><b>block1 <br><br><br></b>
</th>

<td><textarea rows="5" cols="60"  name="t1"><%=sb%></textarea><br><br><br></td><td></td> <td> 



</td></tr>
<tr><th><b>block2 <br><br><br></b>
</th>

<td><textarea rows="5" cols="60"  name="t2"><%=sb1%></textarea><br><br><br></td><td></td><td>


<tr><th><b>block3 <br><br><br></b>
</th>

<td><textarea rows="5" cols="60" name="t3"><%=sb2%></textarea><br><br><br></td><td></td><td>



<tr><td><b>Choose the file To Upload:</b>
</td>
<td></td></tr>
</from>
<%   sb.delete(0, sb.length());
sb1.delete(0, sb1.length());
sb2.delete(0, sb2.length());
%>
<tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="Send File"  name="table"></p></td></tr>
<table>
</center>
</FORM>
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>


	</body>
</html>