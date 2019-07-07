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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script>  
$(document).ready(function(){  
    $("input").keydown(function(){  
        $("input").css("background-color", "pink");  
    });  
    $("input").keyup(function(){  
        $("input").css("background-color", "lightblue");  
    });  
});  
</script>
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
String q1="select * from quali where status=1 and stdid='"+id+"' ";
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


<!-- <form action="update-process.jsp" name="winform"> -->

      <a href="retrieveDel.jsp" style="margin-left:280px; ">back..</a>
    
           <table width="60%" align="center" style="background-color: #e6def7; margin-top:10px" width="300px; " >
        <br/> 
        <!-- <caption><h3><i>View Details..</i></h3> </caption>
         -->
        <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
        <tr><td colspan="4"></td></tr> <tr><td colspan="4" align="center"> <h3>Update..</h3></td></tr> <tr><td colspan="4"></td></tr> 
         
          <tr><td colspan="4"></td></tr> <tr><td colspan="4">
          <hr width="100%" class="new1" align="left" style=" color:rgb(6, 24, 219);"></td></tr> <tr><td colspan="4"></td></tr> 
           <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
        <tr style="padding:100px; margin-top:100px;">
        
            <th>Name:</th><td ><input type="text" name="t1" value="<%out.println(rs.getString("name"));%>"></td>
            <th>FName:</th><td style="color:"><input name="t2" type="text" value="<%out.println(rs.getString(3));%>"></td>
        </tr>
        
        
        <tr><td colspan="4"></td></tr><tr><td colspan="4"></td></tr><tr><td colspan="4"></td></tr><tr></tr>
       
        <tr>
            <th>Email:</th><td style="color:"><input name="t2" type="text" value="<%out.println(rs.getString(4));%>"></td>
            <th>mobile:</th><td style="color:"><input name="t3" type="text" value="<%out.println(rs.getString(5));%>"></td>
        
      
         <% }



   
          %>  
               <tr><td colspan="4">    <hr width="85%" align="left" style="margin-left:30px;"> </td></tr>
               </table>
               
           <form action="test.jsp" method="get">
           <table>
            <tr style="color:#5e63b5">
            
                <th>Qualification:</th><th>Percentage:</th> <th>Passing Year:</th><th>Remarks</th><th>Action</th>
            </tr> 
               <% int gg=0;
               while(rs1.next()){
            	   a=a+1;
            	   gg=gg+1;
                     %> 
                      <input type="hidden" name="idq" id="w<%= gg %>" size="8" value="<%out.println(rs1.getString(1));%>">
                  
                      <tr>
                         
                   <%--  <th style="color:green"><input type="hidden" name="idq" size="8" value="<%out.println(rs1.getString(1));%>"></th> --%>
                 	
                   <th style="color:green"><input type="text" <%-- id="k<%= gg %>" --%> name="c1"<%--  id="w<%= gg %>" --%> size="8" value="<%out.println(rs1.getString(2));%>"></th>
                   <th style="color:#383c42"><input type="text" name="c2"size="4" value="<%out.println(rs1.getString(4));%>"> </th>
                   <th style="color:#383c42"><input type="text" name="c3" size="4" value="<%out.println(rs1.getString(3));%>"></th>
                   <th style="color:#383c42"><input type="text" name="c4" value="<%out.println(rs1.getString(6));%>"></th>
                   <td>
                        <input type="button" class="btn btn-success btn-xs"  onclick="sendInfo111()" value="+"/>
                        <input type="button" class="btn btn-success btn-xs" onclick="sendInfo(<%= gg %>)" value="-"/>
                   <td/>
 
                
                     <% } %>             
            </tr>
                         <% if(a==1){ %>
                         <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
                          <tr><td colspan="4" align="center" style="color: red"> No any Qualification..</td></tr>
                          <tr><td colspan="4"></td></tr> <tr><td colspan="4"> </td></tr> <tr><td colspan="4"></td></tr> 
                          
                                <%} %>
                                
           </table>
           
           <input type="submit">
           </form>
           <table>                     
            <tr>
            <td colspan="4" rowspan="3">
            <%
            ResultSet rsc=st.executeQuery(q);
            %>
<div class="container">
   
   <hr width="85%" align="left" style="margin-left:30px;">
    <div class="form-group">
      <label for="comment">Comment:</label>
      <% while(rsc.next()){%> 
      <textarea class="form-control" rows="5" cols="70" name="c5"><%out.println(rsc.getString(8));%></textarea>
                
      <%} %>
    </div>
</div>
            </td>
            
            </tr>
            
            
            
            <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
        <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
         <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
          <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
           <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> <tr><td colspan="4"></td></tr> 
    
          <tr>
             <td colspan="5" align="center"><input type="submit"></td>
          
          </tr>  
                                                        
</table>



            <br/><br/>
            
           <br> <span id="mylocation" style="color:green;font-size:14px;"></span>
  
<!-- </form> -->
        
<script>  
//var request;  
function sendInfo(i){  alert($("#w"+i).val()) ;    /*  alert($("#k"+i).val()) ;    */                                                            /*  function sendInfo(i){  alert($("#w"+i).val())  */
	//document.getElementById("#w"+i).value;
	//var email='';
// var a=document.vinform.c.value; 
//var  b=document.vinform.p.value; 
//var  c=document.vinform.y.value; 
var  idq= $("#w"+i).val();
//alert("hi.." +idq);
//alert(a+" "+b+""+c+" "+hd);
var url="hideQuali.jsp?idq="+idq;   
//alert("hi.." +idq)
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val; 
}  
}  
  
</script>
    
  
    </body>
</html>
