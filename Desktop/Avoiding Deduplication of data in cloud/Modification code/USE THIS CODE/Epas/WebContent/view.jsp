<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%String a=request.getParameter("a");
session.setAttribute("a",a);
String b=request.getParameter("b");
String c=request.getParameter("c");
String name=(String)session.getAttribute("name");
String status="Not Accepted";
int cnt=0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edm","root","root");
PreparedStatement ps1=con.prepareStatement("select count(*) from fkey where uname=? and fid='"+c+"'");
ps1.setString(1,name);
ResultSet rs=ps1.executeQuery();

while(rs.next())
{
	cnt=rs.getInt(1);
}
if(cnt==0)
{
	PreparedStatement ps=con.prepareStatement("insert into fkey(uname,oname,fname,status,fid) values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,b);
	ps.setString(3,a);
	ps.setString(4,status);
	ps.setString(5, c);
	ps.executeUpdate();
	response.sendRedirect("uvf.jsp?msg=Send request successfully to owner");
}
else
{
	response.sendRedirect("uvf.jsp?msg=Request already sent to owner");
}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>