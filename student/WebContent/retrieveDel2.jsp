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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
   
      <!--  <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   
   <!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
   
 <script type="text/javascript">
  $(document).ready(function() {  /* for data table */
    $('#example').DataTable();
    } )
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> retrieveDel.jsp</title>
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
                <div class="col-md-10" style=" margin-top:0px">
             
             
                <!--Start for student records  -->
        
         <div class="container-fluid">

                            <!-- <div class="row">
                                      <div class="col-md-12" style="background-color: rgb(132, 127, 226); color:white " align="center"><h4>Students Records... 
                                     <a href="addnewProcess.jsp" style="color: blue; margin-left: 1000px;">
                                      <button class="btn btn-xs">Add to New</button> </a>
                                         </h3>
                                    </div>
                         
                                   </div> -->
                           <!--   <a href="addAndAjax/regiForm2.jsp" ><h4 style="margin-left:200px; "><i class="fa fa-arrow-left" aria-hidden="true"></i></h4></a>
                              --> 
    




  
   <div class="row">   
          
           <div class="col-md-12">
           
           
           <% 
Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String q="select * from std3";
ResultSet rs=st.executeQuery(q);



//String a=request.getParameter("log1");
//if("success".equals(a)){
////	out.print("<script>alert('Update successfully...................')</script>");
   // %><h4 style="color: red; text-align: center; text-shadow: green;" ><% 
//out.println("Record Update Successfully.....");
//}
    %></h4><% 
//if("delete".equals(a)){
	// %><h5 style="color: red; text-align: center;" ><% 
	////out.print("<script>alert('Delete successfully.......')</script>");
	// out.println("Record Deleted Successfully.....");
	// }
	// %></h5>
	 <% 

%>

<table  id="example" class="display" style="width:100%; border-bottom-color: rgb(234, 238, 242);" >   
        <thead>
       <tr style="background-color:

#a6a6a6; color: white; text-align: center;">
  
        <th>ID</th> <th>NAME</th> <th>F.Name</th>  <th>Email</th> <th>Mobile</th><th>DOB</th>  <th>Address</th> <th>Status</th><th>Reg.Date</th><th>Action</th>
        
        <!--  <a href="index.jsp" style="text-content:right;">addMore</a> -->
         </tr>
 </thead>
 <tbody>
 <%
while(rs.next())
{ 

%>                                                           
	<tr style="font-family:Times New Roman">
 <td align="center" style="color: #dd1620; background-color:; font-weight: bold;"><% out.println(rs.getInt(1));%>.</td>
 <td align="center"><%out.println(rs.getString(2));%></td>
 <td align="center"><%out.println(rs.getString(3));%></td>
<td align="center" ><%out.println(rs.getString(4));%></td>
<td align="center"><%out.println(rs.getString(5));%></td>
 <td align="center"><%out.println(rs.getInt(6));%></td>
<td align="center" ><%out.println(rs.getString(7));%></td>
<td align="center" ><%out.println(rs.getString(9));%></td>
<td align="center" ><%out.println(rs.getString(10));%></td>
 <td align="center" style="background-color: #f8ecf2;font-weight: bold;">
 
 <a href="update3.jsp?id=<%=rs.getString(1) %>"><i class="fa fa-edit" style="font-size:15px;color:rgb(33, 94, 25)"></i></a>
 <a href="view2.jsp?id=<%=rs.getString(1) %>"><i class="fa fa-search-plus" aria-hidden="true" style="font-size:15px"></i></a>
 <a href="delete.jsp?id=<%=rs.getString(1) %>"><span class="glyphicon glyphicon-trash" style="font-size:13px;color:#e29599"></span></a>
 
 </td>
 </tr>                                                             
	                                                            
<%  

   }%>
   </tbody>
  
</table>
           
           
           
           </div>
           
    </div> 


</div><!--end for student records  -->
 </div>
    
  </div><!--end header row  -->
    

</body>
</html>