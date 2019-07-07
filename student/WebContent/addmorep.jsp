<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>

<%  

String a=request.getParameter("a"); 
String b=request.getParameter("b"); 
String c=request.getParameter("c"); 
String r=request.getParameter("r"); 
String hd=request.getParameter("hd"); 
 out.println("stdid is.."+hd);
 String status="1";
//System.out.println("course............."+a);
 Connection connection=null; 
//out.println(connection);
try { 
 Class.forName("com.mysql.jdbc.Driver"); 
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root", "root");
//out.println(connection);
 String query="insert into quali(qualification,year,percentage,stdid,remark,status) values('"+a+"','"+b+"','"+c+"','"+hd+"','"+r+"','"+status+"')";
// out.println(query);
 Statement st=connection.createStatement();
 int i1=st.executeUpdate(query);
 if(i1>0){
	
	// out.println("................save");
	    PreparedStatement ps=connection.prepareStatement("select * from quali where stdid="+hd);  
	     
	ResultSet rs=ps.executeQuery();  
		
			//%>
			<table align="left" style="padding:10px" >
			
			 <th>Course</th><th> Percentages...</th> <th>Passing Year</th><th>Remark</th>
			
		 <% while(rs.next()){ %>
			<tr style="color:black; ">
			<td ><input style="background-color: rgb(197, 198, 196)" type="text" readonly="readonly" size="3" value="<%out.println(rs.getString(2));%>">&nbsp;&nbsp;&nbsp;</td>
			<td ><input type="text" style="background-color: rgb(197, 198, 196)" readonly="readonly" value="<%out.println(rs.getString(4));%>">&nbsp;&nbsp;&nbsp;</td>
			<td ><input type="text"  style="background-color: rgb(197, 198, 196)" readonly="readonly" value="<%out.println(rs.getString(3));%>">&nbsp;&nbsp;&nbsp;</td>
			<td ><input type="text" size="3" style="background-color: rgb(197, 198, 196)" readonly="readonly" value="<%out.println(rs.getString(6));%>">&nbsp;&nbsp;&nbsp;</td>
			
			<td style="color: green;"><i class="fa fa-check"></i></td>
			
			<%-- <td><%out.println(rs.getString(2));%>
			<td><%out.println(rs.getString(3));%>
			<td><%out.println(rs.getString(4));%>
			 --%></tr>
			<%} %> 
			
			</table>
			<br/><br/>
			
			<%
			
	   
     }
 else
 {
	out.println("data not inserted..."); 
 }
} catch (ClassNotFoundException e) {
 e.printStackTrace();
} catch (SQLException e) {
 e.printStackTrace();
}






/* 
String email=request.getParameter("email");  

out.println(email+"...");
System.out.println("....e;;;"+email);
if(email.contains("@")&&email.contains(".")){  
try{  
	
  Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");

PreparedStatement ps=c.prepareStatement("select * from std1 where email=?");  
ps.setString(1,email);  
ResultSet rs=ps.executeQuery();  
if(rs.next()){  
out.print("Unavailable! <span style='color:red'><i class='glyphicon glyphicon-remove'></i><span>");  
}else{  
out.print("<span style='color:green'>Available....</span> <span style='color:green'> <i class='glyphicon glyphicon-check'></i></span>");  
}  
}catch(Exception e){out.print(e);}  
}else{  
out.print("Invalid email!"+email);  
}   */
%>
</body>
</html>