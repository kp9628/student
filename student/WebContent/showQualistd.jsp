
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>

<%@page import="connect.ConnectionProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
 <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} )

</script>
<link href="style.css" type="text/css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" >
<link href="bootstrap/css/bootstrap-grid.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> showQuali.jsp</title>
</head>
<body>

<div class="container-fluid">
                                   <div class="row">
                                   
                                      <div class="col-md-12" style="background-color: rgb(222, 234, 224); color: " align="center"><h3>Students Records...</h3></div>
                                   
                                   <br/> 
                                   </div>
<a href="addAndAjax/regiForm2.jsp" ><h4 style="margin-left:100px; "><i class="fa fa-arrow-left" aria-hidden="true"></i></h4></a>
                              


   <div class="row">
           <div class="col-md-1"></div>
           <div class="col-md-10">
           
<% 
Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String q="select std3.*,quali.* from std3, quali where quali.stdid=std3.id limit 100 ";
ResultSet rs=st.executeQuery(q);
%>
<table  id="example" class="display" border="1"  style="width:100%; border-bottom-color: rgb(234, 238, 242);" >
     
   <!--  <caption style="background-color:skyblue; color: white; text-align: center;"><h2> Welcome</h2></caption>
     <hr> -->
     <thead>
    <tr style="background-color:rgb(201, 170, 130); color: white; text-align: center;">
    <th>StdId</th> <th>NAME</th> <th>Qualification</th>  <th>Percentage</th> <th>Year</th>  <th>Remark</th> <th>Status</th> <th><center>Action</center> </th>
 </tr>
 </thead>
 <tbody>
 <%
while(rs.next())
{ 

%>                                                           
	<tr>
 <td align="center" style="color: #ed0716"><% out.println(rs.getString("stdid"));%></td>
  <td align="center"><%out.println(rs.getString("name"));%></td>
 <td align="center" ><%out.println(rs.getString("qualification"));%></td>
 <td align="center"><% out.println(rs.getString("percentage"));%></td>
 <td align="center"><%out.println(rs.getString("year"));%></td>
 <td align="center"><%out.println(rs.getString("Remark"));%></td>
  <td align="center"><%out.println(rs.getString("Status"));%></td>

 <td align="center">
  <a href="update2.jsp?id=<%=rs.getString(1) %>"><i class="fa fa-edit" style="font-size:25px;color:rgb(33, 94, 25)"></i></a>
 <a href="delete.jsp?id=<%=rs.getString(1) %>"><span class="glyphicon glyphicon-trash" style="font-size:19px;color:#e29599"></span></a>
</td>
 </tr>
 <%  

   }%>                                                             
	</tbody>                                                            

   
  
</table>

           </div>
           <div class="col-md-1"></div>
    </div>
</body>
</html>