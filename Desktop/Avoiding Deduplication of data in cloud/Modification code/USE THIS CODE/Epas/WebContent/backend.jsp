<%@page import="java.sql.*"%>
<%@page import="connection.DB" %>
<% String reg=request.getParameter("reg");
String status="pending";
String search=request.getParameter("search");
int cnt=0;

Connection con=DB.getconn();
Statement st=con.createStatement();
 
 
 if(reg.equalsIgnoreCase("Owner Registration")){
	try{   
	int a=st.executeUpdate("insert into oreg values('"+request.getParameter("name")+"','"+request.getParameter("pswd")+"','"+request.getParameter("email")+"','"+request.getParameter("phone")+"','"+request.getParameter("address")+"','"+status+"')");
	if(a>0){
		
		response.sendRedirect("owner.jsp?mes=Registered Successfully");
	}
	}
	catch(Exception e){
		response.sendRedirect("oreg.jsp?mes=Owner allready exit");
	}
 }
 
 if(reg.equalsIgnoreCase("User Registration")){
	try{   
	int b=st.executeUpdate("insert into ureg values('"+request.getParameter("name")+"','"+request.getParameter("pswd")+"','"+request.getParameter("email")+"','"+request.getParameter("phone")+"','"+request.getParameter("address")+"')");
	if(b>0){
		
		response.sendRedirect("user.jsp?mes=Registered Successfully");
	}
	}
	catch(Exception e){
		response.sendRedirect("ureg.jsp?mes=User allready exit");
	}
 }
 if(reg.equalsIgnoreCase("User Login"))
 {
	try{
		
	
	 PreparedStatement ps=con.prepareStatement("select count(*) from ureg where email=?&&pswd=?");
		ps.setString(1,request.getParameter("email"));
		ps.setString(2,request.getParameter("pswd"));
		ResultSet rs=ps.executeQuery();
		rs.next();
		cnt=rs.getInt(1);
		if(cnt==1)
		{
			PreparedStatement ps1=con.prepareStatement("select name from ureg where email=?");
			ps1.setString(1,request.getParameter("email"));
			ResultSet rs1=ps1.executeQuery();
			rs1.next();
			String name=rs1.getString(1);
			session.setAttribute("name",name);
			System.out.println(name);
			
			session.setAttribute("email",request.getParameter("email"));
			response.sendRedirect("uhome.jsp?msg=Login Successfully");
		}else
		{
			response.sendRedirect("user.jsp?msg=Please enter valid credentials");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	 
 }
 if(reg.equalsIgnoreCase("Owner Login"))
 {
	try{
		
		

	 PreparedStatement ps=con.prepareStatement("select count(*) from oreg where email=?&&pswd=?&&status='Accepted'");
		ps.setString(1,request.getParameter("email"));
		ps.setString(2,request.getParameter("pswd"));
		ResultSet rs=ps.executeQuery();
		rs.next();
		cnt=rs.getInt(1);
		if(cnt==1)
		{
			PreparedStatement ps1=con.prepareStatement("select name from oreg where email=?");
			ps1.setString(1,request.getParameter("email"));
			ResultSet rs1=ps1.executeQuery();
			rs1.next();
			String oname=rs1.getString(1);
			session.setAttribute("oname",oname);
			System.out.println(oname);
			session.setAttribute("email",request.getParameter("email"));
			response.sendRedirect("ohome.jsp?msg=Login Successfully");
		}else
		{
			response.sendRedirect("owner.jsp?msg=Please enter valid credentials");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	 
 }

 if(reg.equalsIgnoreCase("Upload File")){
		try{   
		int u=st.executeUpdate("insert into upload values('"+(String)session.getAttribute("email")+"','"+request.getParameter("id")+"','"+request.getParameter("name")+"','"+request.getParameter("file")+"')");
		if(u>0){
			
			response.sendRedirect("ovf.jsp?mes=Uploaded Successfully");
		}
		}
		catch(Exception e){
			response.sendRedirect("ovf.jsp?mes=file allready exit");
		}
	 }
 

 %>