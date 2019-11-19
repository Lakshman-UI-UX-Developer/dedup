<%@ page import="java.util.Date.*,java.util.*,java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>






<%

String date=(String)session.getAttribute("date");
out.print(date);
String fkey=(String)session.getAttribute("fkey");
out.println(fkey);
String fid=(String)session.getAttribute("fid");
out.println(fid);
String oname=(String)session.getAttribute("oname");
out.println(oname);
String fname=(String)session.getAttribute("fname");
out.println(fname);
String file1=(String)session.getAttribute("file");
File f=new File("C:/Users/SaratKumar/Desktop/"+file1);
FileInputStream fis=new FileInputStream(f);


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edm","root","root");
	PreparedStatement pst=con.prepareStatement("insert into file(oname,fid,fname,block1,block2,block3,date,file) values(?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),?,AES_ENCRYPT(?,'key'))");
	
	pst.setString(1, oname);
	pst.setString(2, fid);
	pst.setString(3, (String)session.getAttribute("file"));
	pst.setString(4, request.getParameter("t1"));
	pst.setString(5, request.getParameter("t2"));
	pst.setString(6, request.getParameter("t3"));
	pst.setString(7, date);
	pst.setBinaryStream(8, (InputStream)fis ,(int)(f.length()));
	int j=pst.executeUpdate();
	if(j>0)
	{
	
	

response.sendRedirect("ovf.jsp?msg=file uploaded successfully");


}
}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>



</body>
</html>