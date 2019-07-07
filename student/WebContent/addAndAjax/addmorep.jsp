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

<style type="text/css">
  body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
    }
</style>


</head>
<body>

<%  

String a=request.getParameter("a"); 
String b=request.getParameter("b"); 
String c=request.getParameter("c"); 
String i=request.getParameter("hd"); 
String r=request.getParameter("r"); 
String status="1";
/* out.println(a+"..."+b+"..."+c);
System.out.println("course............."+a);
 */Connection connection=null; 
//out.println(connection);
try { 
 Class.forName("com.mysql.jdbc.Driver"); 
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root", "root");
 //out.println(connection);
 String query="insert into quali(qualification,year,percentage,stdid,remark,status) values('"+a+"','"+c+"','"+b+"','"+i+"','"+r+"','"+status+"')";
 //out.println(query);
 Statement st=connection.createStatement();
 int i1=st.executeUpdate(query);
 if(i1>0)
 {
	
	 //out.println("successfully...");
	  
	   PreparedStatement ps=connection.prepareStatement("select * from quali where stdid="+i);  
	   
		ResultSet rs=ps.executeQuery();  
		
			%>
			 <table  width="500" class="table table-bordered table-hover" >
			<thead><tr class="info">
			<th>Course</th> <th>Percentages</th><th> Year</th> <th>Remarks</th><th>Action</th>
			</tr></thead>
			<% while(rs.next()){ 	/* System.out.println("helo"); */%>
		
			<%-- <tr style="color:black;">
		    <td ><input type="text" readonly="readonly" value="<%out.println(rs.getString(2));%>"></td>
			<td ><input type="text" readonly="readonly" value="<%out.println(rs.getString(3));%>"></td>
			<td ><input type="text"  readonly="readonly" value="<%out.println(rs.getString(4));%>"></td>
			<td ><input type="text"  readonly="readonly" value="<%out.println(rs.getString(6));%>"></td>
			</tr> --%>
			<tbody>
			<tr style="color:;">
		    <td style="width:2%"><%out.println(rs.getString(2));%></td>
			<td style="width:2%" ><%out.println(rs.getString(4));%></td>
			<td style="width:2%"><%out.println(rs.getString(3));%></td>
			<td style="width:2%"><%out.println(rs.getString(6));%></td>
			<td style="width:2%"></td>
			</tr></tbody>
			<%-- <td><%out.println(rs.getString(2));%>
			<td><%out.println(rs.getString(3));%>
			<td><%out.println(rs.getString(4));%>
		 --%>	
			<%} %>
			</table>
			
			
			<%
			
		 
		
	//response.sendRedirect("regiForm.jsp?log=valid");
    }
 else
	 out.println("not save....");
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