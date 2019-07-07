<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>

<%@page import="connect.ConnectionProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>
<head>
  <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
</head>
<body>
 
 
 
        <% 
Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String q="select *from std1 ";
ResultSet rs=st.executeQuery(q);
 
 
 
 %>






  <table id="example">
    <thead>
      <tr><th>Sites</th></tr>
    </thead>
    <tbody>
      <tr><td>SitePoint</td></tr>
      <tr><td>Learnable</td></tr>
      <tr><td>Flippa</td></tr>
      <%
    while(rs.next())
   {%>
    	<tr><td>kp</td></tr>
    	<tr><td>kp</td></tr>
   <% }%>
    	
   
      
    </tbody>
  </table>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <script>
  $(function(){
    $("#example").dataTable();
  })
  </script>
</body>
</html>