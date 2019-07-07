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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">

  .k {
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
        <title>Update3</title>
    </head>
    <body onload=" sendInfo()" class="k">
      
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
<input type="hidden" id="id1" value="<%= id%>">
<div class="container-fluid">
  <div class="row" style="background-color:#1520c1; color: white;font-size: 26px;">
    <br><center> Update</center> 
   <!-- <a href="../retrieveDel2.jsp" style="margin-left: 1000px; color:blue;"><button class="btn btn-xs">Show Records</button> </a>
    -->
   </div>


</div>




<div>
  <div class="row"><br>
      <div class="col-md-10 col-md-offset-1" style="background-color:white;border: 1px solid #bfbdbb;">
         <!-- <a href="retrieveDel2.jsp" style="margin-left:280px; ">back..</a>
     -->
     <div class="well well-sm" style="background-color:#d1b0a3; color:white;"><b>Header Items</b></div>
 
         <form action="updateProcess3.jsp" method="get">
           <table class="table table-bordered table-hover" >
       
        <!-- <caption><h3><i>View Details..</i></h3> </caption>
         -->
         
       <tr>
            <th>Name:<sup style="color: red;font-size: medium;">*</sup></th><td ><input type="text" name="name" required="required" value="<% out.println(rs.getString("name")); %>"></td>
            <th>Father Name:</th><td style="color:"><input type="text" required="required" name="fname" value="<% out.println(rs.getString(3)); %>"></td>
        </tr>
        
           <tr>
            <th>Email Id:<sup style="color: red;font-size: medium;">*</sup></th><td style="color:"><input type="email" required="required" name="email" value="<% out.println(rs.getString(4)); %>"></td>
            <th>Mobile:<sup style="color: red;font-size: medium;">*</sup></th><td style="color:"><input required="required" name="mobile" value="<% out.println(rs.getString(5)); %>"></td>
            </tr>
               
           <tr>
            <th>Date Of Birth:</th><td style="color:"><input type="text" placeholder="Ex. 2019-04-25" required="required" name="dob" value="<% out.println(rs.getString(6)); %>"></td>
            <th>Address:</th><td style="color:"><input type="text" required="required" name="address" value="<% out.println(rs.getString(7)); %>"></td>
            </tr>
        
           
           <tr>
            <th>Registration Date:</th><td style="color:"><input type="text" name="regdate" value="<% out.println(rs.getString(10)); %>"></td>
            <th>id:</th><td style="color:"><input type="text" readonly="readonly" name="stdid" value="<% out.println(rs.getString(1)); %>"></td>
            </tr>
        
       </table>
         
      
       <!-- Header items table end.....................  -->
      
         <% }%>
     <div class="well well-sm" style="background-color: #d1b0a3; color:white;"><b>Line Items</b></div>
     <!--  <form action="test.jsp"> -->
        
         <span id="myloc"></span>  
         
          <!--   </form> -->
 <!--for add more  -->    <h3 style="color: blue; margin-left: 75px;"><a href="#" style="color: blue;"><i class="fa fa-plus-circle" aria-hidden="true" id="Add"></i></a> <a href="#"><i id="Remove" style="color: red;" class="fa fa-minus" aria-hidden="true"></i></a></h3>
            <center><div id="mylocation"></div></center>
 
              <center><div id="textboxDiv"></div></center>
 <!--end add more  -->
       
     
     
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
      <textarea class="form-control" name="comment" rows="5" cols="70" ><%out.println(rsc.getString(8));%></textarea>
      <%} %>
    </div>
  

            </td>
            
            </tr>
            
            
            
                                                        
    </table>
   
 <center> <button type="submit"class="btn btn-success btn-xs"><span class="glyphicon glyphicon-upload"></span>&nbsp;Update</button>&nbsp;
 <a style="font-size:12px;"  href="retrieveDel2.jsp"><button class="btn btn-danger btn-xs"><span style="font-size:12px;"  class="glyphicon glyphicon-refresh"></span>&nbsp;Cancel</button></a></center>
                                 
     
 </form>


        
  
<br><br>
      </div> <!-- end colls -->
  </div>
</div>

        

      
        
     <script>  
        $(document).ready(function() {  
            $("#Add").on("click", function() {
            	
            	var html = '';
            	
            	html += '<div>';
            	html += '<form  action="demo.jsp" method="get" name="vinform"><table class="table table-bordered table-hover" width="300px"><tr>';
              	html += '<td><input type="text"placeholder="Enter Course..." id="c" name="c" height="33" onkeyup="onkeyupval();"/>';
              	html +=  '<div id="showList"  style=" overflow: visible; position: absolute; visibility: visible; clear:both; background-color: white;">';
                html +=  '<ul class="list-group" style="order:none; list-style: none;">';
                html +=  '</ul>';
                html +=  '</div></td>';
              	
              	html += '<td><input type="text" placeholder=" EnterPercentage..."id="p" name="p"/></td>';
            	html += '<td><input type="text" placeholder="Enter passing Year..."id="y" name="y"/>';
            	html += '<td><input type="text" id="r" name="r" placeholder="Remark" required="required"/>&nbsp;&nbsp;&nbsp;</td>';
            	html += '<input type="hidden" name="hd" value="4"/>';
            	html += '<td><input type="button" class="btn btn-success btn-xs" onclick="sendInfo()" value="add"/></td></tr></table>';
            	html += '</form>';
            	html += '</div>';
            	//"<div><br><form method='post' id=''>Course:<input type='text' name='c'/>Percentage:<input type='text' name='p'/>Passing Year:<input type='text' name='y'/><button type='button' id='savedata' onclick='"return saveData();"' >Add</button><br></form></div>"
                $("#textboxDiv").append(html);  
            });  
            $("#Remove").on("click", function() {  
                $("#textboxDiv").children().last().remove();  
            });  
        });  
    </script>  
    
  
   <!-- ajax -->  <script type="text/javascript">
   function sendInfo() {
	  
	  
	  // alert("hi..");
	   
		    // var id=$('#id1').val();
		    // alert(id); 
        	/*  var name=$('#name').val();
        	var age=$('#age').val();
        	var id=$('#id').val(); 
        	 alert("hi.."+id);  */
        	
            $.ajax({
                type: "post",
                url: "upateAjaxAddDelete.jsp", //this is my servlet
               /*   data: "id=" +$('#id1').val(), */ 
                 data: "c=" +$('#c').val()+"&p="+$('#p').val()+"&y="+$('#y').val()+"&r="+$('#r').val()+"&id="+$('#id1').val(),
                /*  data: "name=" +$('#id1').val(), */
                  success: function(msg){  
                	$('#myloc').html(msg);
                	$('#c').val("");
                	$('#p').val("");
                	$('#y').val("");
                	$('#r').val("");
              }
           });  
   }
      </script>
      
      
      <script type="text/javascript">
      function sendInfoDelete(i)
      {
    	  alert("kp.....hi.."+i);
    	  alert($("#w"+i).val()) ; 
    	  
    	  $.ajax({
              type: "get",
              url: "ForDeleteInUpdate.jsp", //this is my servlet
             /*   data: "id=" +$('#id1').val(), */ 
               data: "w=" +$("#w"+i).val()+"&stdid="+$('#id1').val(),
              /*  data: "name=" +$('#id1').val(), */
                success: function(msg){  alert(msg)
              	$('#myloc').html(msg);
              
            }
         });  
      }
      
      
      
      </script>
      
      <!-- for auto complete -->
       <script>
   function onkeyupval(){
	   var search=$('#c').val();
     
       if(search !=='' && search !==null)
       {    
           $.ajax({ 
              type:'POST',
              url:'addAndAjax/autocmpltprocess.jsp',
              data:'key='+search,
              success:function(data)
              {
                  $('#showList').html(data);
              }
         
           }); 
       }
       else
       {
           $('#showList').html('');
       }
   }
       // $(document).ready(function(){
            /* $('#c').keyup(function(){
            	
                var search=$('#c').val();
                alert(search);
                if(search !=='' && search !==null)
                {    
                    $.ajax({ 
                       type:'POST',
                       url:'autocmpltprocess.jsp',
                       data:'key='+search,
                       success:function(data)
                       {
                           $('#showList').html(data);
                       }
                  
                    }); 
                }
                else
                {
                    $('#showList').html('');
                }
            }); */
            $(document).on('click','li',function(){
               $('#c').val($(this).text());
               $("#showList").empty();
            });
            
       // });
</script>
   
    </body>
</html>
