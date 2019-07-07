<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>


<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
   String name=request.getParameter("name"); 
    
    String pass=request.getParameter("pass"); 
// out.println("stdid is.."+name+".."+pass);
/*  String status="1"; */
//System.out.println("course............."+a);
 Connection connection=null; 
//out.println(connection);
try { 
 Class.forName("com.mysql.jdbc.Driver"); 
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kp","root", "root");
out.println(connection);
 String query="insert into ajaxdb(name,pass) values('"+name+"','"+pass+"')";
// out.println(query);
Statement st=connection.createStatement();
 int i1=st.executeUpdate(query);
 if(i1>0){
	out.println("Stored successfully....");
			
	   
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






%> 
<body> <h4> is stored </h4> </body> </html>
</body>
</html>