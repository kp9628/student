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
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
  body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
    }
</style>

    
    <style type="text/css">
    hr.new1 {
  border-top: 1px solid red;
}
    
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View</title>
    </head>
    <body>
        <% 
Connection c=ConnectionProvider.getConn();
String id=request.getParameter("id");
Statement st=c.createStatement();
String q="select * from std3 where id='"+id+"' ";
ResultSet rs=st.executeQuery(q);



Statement st1=c.createStatement();
String q1="select * from quali where stdid='"+id+"' ";
ResultSet rs1=st1.executeQuery(q1);
//while(rs1.next()){
//  out.println(rs1.getString(3));  
//  out.println(rs1.getString(4));  
//}

//while(rs.next()){}
 //or
 //if(rs.next()){   }
 // or ..... all these same work...

 int a=1;
 
 
 while(rs.next()){
  
  
 %>

<div class="container-fluid">
  <div class="row" style="background-color:#a2bcb9;">
     <br> <br> <br> 
   <!-- <a href="../retrieveDel2.jsp" style="margin-left: 1000px; color:blue;"><button class="btn btn-xs">Show Records</button> </a>
    -->
   </div>


</div>




<div>
  <div class="row"><br>
      <div class="col-md-10 col-md-offset-1" style="background-color:white;border: 1px solid #bfbdbb;">
         <!-- <a href="retrieveDel2.jsp" style="margin-left:280px; ">back..</a>
     -->
     <div class="well well-sm" style="background-color: #4259f4; color:white;"><b>Header Items</b></div>
 
         
           <table class="table table-bordered table-hover" >
       
        <!-- <caption><h3><i>View Details..</i></h3> </caption>
         -->
         
       <tr>
            <th>Name:</th><td ><%out.println(rs.getString("name"));%></td>
            <th>Father Name:</th><td style="color:"><%out.println(rs.getString(3));%></td>
        </tr>
        
           <tr>
            <th>Email Id:</th><td style="color:"><%out.println(rs.getString(4));%></td>
            <th>Mobile:</th><td style="color:"><%out.println(rs.getString(5));%></td>
            </tr>
               
           <tr>
            <th>Date Of Birth:</th><td style="color:"><%out.println(rs.getString(6));%></td>
            <th>Address:</th><td style="color:"><%out.println(rs.getString(7));%></td>
            </tr>
        
           
           <tr>
            <th>Registration Date:</th><td style="color:"><%out.println(rs.getString(10));%></td>
            <th>id:</th><td style="color:"><%out.println(rs.getString(1));%></td>
            </tr>
        
       </table>
       
       <!-- Header items table end.....................  -->
      
         <% }%>
     <div class="well well-sm" style="background-color: #4259f4; color:white;"><b>Line Items</b></div>
 
         <table class="table table-bordered table-hover"> 
            <tr style="color:#5e63b5" class="info">
            
                <th>Qualification:</th><th>Percentage:</th> <th>Passing Year:</th><th>Remarks</th>
            </tr> 
               <% while(rs1.next()){
            	   a=a+1;
            	   
                     %>  
                      <tr>
                      
                   <td><% out.println(rs1.getString(2)); %></td>
                   <td><%out.println(rs1.getString(4));%> </td>
                   <td><%out.println(rs1.getString(3));%> </td>
                   <td><%out.println(rs1.getString(6));%></td>
                   
                
                     <% } %>             
            </tr>
                         <% if(a==1){ %>
                          <tr><td colspan="4" align="center" style="color: red"> No any Qualification..</td></tr>
                                 <%} %>
            </table>
            
            <table class="table table-bordered table-hover">
            <tr>
            <td colspan="4" rowspan="3">
            <%
            ResultSet rsc=st.executeQuery(q);
            %>

   
   <hr width="85%" align="left" style="margin-left:30px;">
    <div class="form-group">
      <label for="comment">Comment:</label>
      <% while(rsc.next()){%> 
      <textarea class="form-control" rows="5" cols="70" readonly="readonly" ><%out.println(rsc.getString(8));%></textarea>
      <%} %>
    </div>
  

            </td>
            
            </tr>
            
            
           
                                                        
    </table>



         <center><a href="retrieveDel2.jsp"><button class="btn btn-danger">Close</button></a></center>
  

      </div> <!-- endcolls -->
  </div>
</div>

      
        
      
  
    </body>
</html>
