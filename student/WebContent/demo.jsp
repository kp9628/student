<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




</head>
<body>

<%  

String a=request.getParameter("a"); 
String b=request.getParameter("b"); 
out.println(a+"..."+b);
System.out.println("course............."+a);
Connection connection=null; 
//out.println(connection);
try { 
 Class.forName("com.mysql.jdbc.Driver"); 
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentaj","root", "root");
 String query="insert into quali(course,percentage) values('"+a+"','"+b+"')";
 Statement st=connection.createStatement();
 st.executeUpdate(query);
} catch (ClassNotFoundException e) {
 e.printStackTrace();
} catch (SQLException e) {
 e.printStackTrace();
}

out.println(connection);




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