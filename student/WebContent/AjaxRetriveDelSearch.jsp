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


<div class="container-fluid">
<div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
        
        
        <% 
Connection c=ConnectionProvider.getConn();
        
        String name=request.getParameter("val");  
        if(name==null||name.trim().equals("")){  
        %> <%out.print("<p>Please enter name!</p>"); 
        }
        else{  
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String q="select * from std1 where name like '"+name+"%'" ;
ResultSet rs=st.executeQuery(q);

if(!rs.isBeforeFirst()) { 
	
out.println("No! any record found!");	
	
}

else{%>


<table width="30%" align="center" border="1" class="table table-striped">
 
 
 <caption style="background-color:blue; color: white; text-align: center;"><h2> Welcome</h2></caption>
 <hr>
 
 <tr>
<th>ID</th> <th>NAME</th> <th>AGE</th>  <th>Email</th> <th>Action &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html" style="text-align:right;">addMore</a></th>
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
<td align="center"><a href="delete.jsp?id=<%=rs.getString(1) %>"><button type="button" class="btn btn btn-danger btn-xs">Delete</button></a>
<a href="update2.jsp?id=<%=rs.getString(1) %>"><button type="button" class="btn btn-pramary btn-xs">Update</button></a>
<a href="view.jsp?id=<%=rs.getString(1) %>"><button type="button" class="btn btn-info btn-xs">View</button></a>
</td>
</tr>                                                             
	                                                            
<%  }
}

}%>




</table>
        
        
        
        </div>
        <div class="col-md-2"></div>
 </div>


</div>






</body>
</html>