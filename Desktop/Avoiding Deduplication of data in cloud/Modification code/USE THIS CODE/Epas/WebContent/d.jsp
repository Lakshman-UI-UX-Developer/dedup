<%@page import="java.sql.*"%><%@page import="java.io.*"%><%@page import="javax.servlet.*"%><%
ServletOutputStream output = response.getOutputStream();
String connectionURL = "jdbc:mysql://localhost:3306/edm";
String Content=new String("");
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection(connectionURL,"root","root");
Statement st=con.createStatement();
ResultSet rst= st.executeQuery("select file from upload where fid='187'");
if(rst.last())
{
Content=rst.getString("file");
System.out.println(Content);
}
con.close();
}catch(Exception e){
System.out.println("Exception caught"+e.getMessage());
}
out.print(Content);
%>