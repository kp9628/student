<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
   
      <!--  <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   
<title>Insert title here</title>

<style type="text/css">
body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
}
</style>
</head>
<body>




           <jsp:include page="header.jsp" />  
              
                <div class="row">
                  <div class="col-md-2" style="margin-top: 10px;">
                  <jsp:include page="sidebar.jsp" /> 
                 </div>
                <div class="col-md-10" style="background-color:#e3efec;margin-top:40px;">
                  
<%


Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String q="select * from qualification ORDER BY course ASC";
ResultSet rs=st.executeQuery(q);

%>


<table  id="example" class="display" style="width:100%; border-bottom-color: rgb(234, 238, 242);" >   

<thead>
<tr style="background-color:#99918f; color: white; text-align: center;">

<th>ID</th> <th>Course Name</th> <th>Course Code</th> <th>Status</th> <th>Action</th> 
 </tr>
</thead>
<tbody>
<%
while(rs.next())
{ 

%>                                                           
<tr style="font-family:Times New Roman"align="right">
<td align="center" style="color: #dd1620; background-color:; font-weight: bold;"><% out.println(rs.getInt(1));%>.</td>
<td align="center"><%out.println(rs.getString(2));%></td>
<td align="center"><%out.println(rs.getString(3));%></td>
<%if("Active".equals(rs.getString(4)) || "active".equals(rs.getString(4))){ %>
<td align="center" style="color: green"><i><%out.println("Active");%></i></td>
 <%} else {%>
 <td align="center"style="color: Red;"><i><%out.println("Inactive");%></i></td>
 <%} %>
<td><a href="update.jsp?id=<%=rs.getInt(1) %>"><i class="fa fa-edit" aria-hidden="true" style="font-size:15px"></i></a>
  </td>
</tr>                                                             
                                                        
<%  

}%>
</tbody>

</table>

 <script type="text/javascript">
  $(document).ready(function() {  /* for data table */
    $('#example').DataTable();
    } )
</script>

             </div>
    
         </div>
    
    </div>
</body>
</html>