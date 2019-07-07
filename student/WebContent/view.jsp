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
    <style type="text/css">
    hr.new1 {
  border-top: 1px solid red;
}
    
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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


<form >
      <a href="retrieveDel.jsp" style="margin-left:280px; ">back..</a>
    
           <table width="60%" align="center" style="background-color: #dce0e8; margin-top:10px" width="300px; " >
        <br/> 
        <!-- <caption><h3><i>View Details..</i></h3> </caption>
         -->
        <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
        <tr><td colspan="4"></td></tr> <tr><td colspan="4" align="center"> <h3>View Details</h3></td></tr> <tr><td colspan="4"></td></tr> 
         
          <tr><td colspan="4"></td></tr> <tr><td colspan="4">
          <hr width="100%" class="new1" align="left" style=" color:rgb(6, 24, 219);"></td></tr> <tr><td colspan="4"></td></tr> 
           <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
        <tr style="padding:100px; margin-top:100px;">
        
            <th>Name:</th><td ><%out.println(rs.getString("name"));%></td>
            <th>Id:</th><td style="color:"><%out.println(rs.getString(1));%></td>
        </tr>
        
        
        <tr><td colspan="4"></td></tr><tr><td colspan="4"></td></tr><tr><td colspan="4"></td></tr><tr></tr>
       
        <tr>
            <th>Age:</th><td style="color:"><%out.println(rs.getString(3));%></td>
            <th>Email:</th><td style="color:"><%out.println(rs.getString(4));%></td>
        
      
         <% }



   
          %>  
               <tr><td colspan="4">    <hr width="85%" align="left" style="margin-left:30px;"> </td></tr>
          
            <tr style="color:#5e63b5">
            
                <th>Qualification:</th><th>Percentage:</th> <th>Passing Year:</th><th>Remarks</th>
            </tr> 
               <% while(rs1.next()){
            	   a=a+1;
            	   
                     %>  
                      <tr>
                      
                   <th style="color:green"><% out.println(rs1.getString(2)); %></th>
                   <th style="color:#383c42"><%out.println(rs1.getString(4));%> </th>
                   <th style="color:#383c42"><%out.println(rs1.getString(3));%> </th>
                   <th style="color:#383c42"><%out.println(rs1.getString(6));%></th>
                   
                
                     <% } %>             
            </tr>
                         <% if(a==1){ %>
                         <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
                          <tr><td colspan="4" align="center" style="color: red"> No any Qualification..</td></tr>
                          <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
                                 <%} %>
            <tr>
            <td colspan="4" rowspan="3">
            <%
            ResultSet rsc=st.executeQuery(q);
            %>
<div class="container">
   <form>
   <hr width="85%" align="left" style="margin-left:30px;">
    <div class="form-group">
      <label for="comment">Comment:</label>
      <% while(rsc.next()){%> 
      <textarea class="form-control" rows="5" cols="70" readonly="readonly" ><%out.println(rsc.getString(8));%></textarea>
      <%} %>
    </div>
  </form>
</div>
            </td>
            
            </tr>
            
            
            
            <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
        <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
         <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
          <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
           <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
    
            
                                                        
</table>



            <br/><br/>
  
</form>
        
      
  
    </body>
</html>
