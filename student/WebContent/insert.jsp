<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index.jsp</title>
</head>
<body>
<% 
Connection c=ConnectionProvider.getConn();
PreparedStatement ps=c.prepareStatement("insert into std1 (name,age,email) values(?,?,?)");
ps.setString(2,request.getParameter("t1"));
ps.setString(3,request.getParameter("t2"));
ps.setString(4,request.getParameter("t3"));
int i=ps.executeUpdate();

if(i>0){ %>
<table align="center" bgcolor="#FFCC99" height="30%" width="40%">
<caption><h1>
	<% out.println("data successfuly stored.......");%></h1></caption>
<tr><th><a href="index.html"><h4>Add More...</h4></a></center><a href="retrieveDel.jsp"> Show All Record ....</a></center></th></tr>
<%}
else
out.println("data not stored.......");


Statement st=c.createStatement();
String q="select * from std1 limit 6";
ResultSet rs=st.executeQuery(q);
%>

<table width="50%" align="center" border="5">
<!---<caption> <h2> All Records....</h2></caption> --->
<tr>
  <th>ID</th> <th>NAME</th> <th>AGE</th>  <th>Email</th> <th>Action</th>
 </tr>
 <%
while(rs.next())
{ 

%>                                                           
	<tr>
 <td align="center"><% out.println(rs.getInt(1));%></td>
 <td align="center"><%out.println(rs.getString(2));%></td>
 <td align="center"><%out.println(rs.getInt(3));%></td>
<td align="center" ><%out.println(rs.getString(4));%></td>
 <td align="center"><a href="delete.jsp?id=<%=rs.getString(1) %>"><button type="button" class="delete">Delete</button></a>
 <a href="update2.jsp?id=<%=rs.getString(1) %>"><button type="button" class="delete">Update</button></a></td>
 </tr>                                                             
	                                                            
<%  

   }%>
   
  
</table>

<%
   
    String n=request.getParameter("t1");
    String m=request.getParameter("t2");
    
    Statement st1= c.createStatement();
ResultSet rs1=st1.executeQuery("select * from std1 ORDER BY id DESC;");
rs1.next();
 out.println(rs1.getString("name"));
 out.println(rs1.getString("id"));



PreparedStatement ps1=c.prepareStatement("insert into qualification (id,tenthy,tenthp,twelfthy,twelfthp,bcay,bcap) values(?,?,?,?,?,?,?)");
ps1.setString(1,(rs1.getString("id")));
ps1.setString(2,request.getParameter("t5"));
ps1.setString(3,request.getParameter("t6"));
ps1.setString(4,request.getParameter("t7"));
ps1.setString(5,request.getParameter("t8"));
ps1.setString(6,request.getParameter("t9"));
ps1.setString(7,request.getParameter("t10"));
ps1.executeUpdate();
%>
</body>
</html>
