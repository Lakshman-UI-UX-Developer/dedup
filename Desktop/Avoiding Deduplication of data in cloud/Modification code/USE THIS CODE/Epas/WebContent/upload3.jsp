<%@ page
	import="java.util.Date.*,java.util.*,java.text.ParseException.*"%>
<%@page
	import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page
	import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="connection.*"%>

<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
	
</script>
</head>

<body>
	<%
		//String date = (String) session.getAttribute("date");
		String date = request.getParameter("date");
		String fid = request.getParameter("fid");
		String fname = request.getParameter("fname");
		String file1 = request.getParameter("file");
		String oname = (String) session.getAttribute("oname");
		String hash = duplicate.duplicate(file1);
		System.out.println(hash+"    hash value ");
		out.println(oname);
		/* out.print(date);
		String fkey = (String) session.getAttribute("fkey");
		out.println(fkey);
		String fid = (String) session.getAttribute("fid");
		out.println(fid);
		
		String fname = (String) session.getAttribute("fname");
		out.println(fname);
		String file1 = (String) session.getAttribute("file"); */
		System.out.println("   ==================================" + file1);
		File f = new File("C:/Users/SaratKumar/Desktop/" + file1);
		FileInputStream fis = new FileInputStream(f);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/edm", "root", "root");
			PreparedStatement pst = con
					.prepareStatement("insert into image(oname,fid,fname,date,file,hashvalue) values(?,?,?,?,AES_ENCRYPT(?,'keyy'),?)");

			pst.setString(1, oname);
			pst.setString(2, fid);
			pst.setString(3, file1);
			pst.setString(4, date);
			pst.setBinaryStream(5, (InputStream) fis, (int) (f.length()));
			pst.setString(6, hash); 
			int j = pst.executeUpdate();
			if (j > 0) {

				response.sendRedirect("try2.jsp?msg=Image uploaded successfully");

			}
		} catch (Exception ex) {

			out.println("Error in connection : " + ex);

		}
	%>



</body>
</html>