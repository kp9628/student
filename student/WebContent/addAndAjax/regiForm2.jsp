<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
    }
</style>
<script>  
$(document).ready(function(){  
    $("input").keydown(function(){  
        $("input").css("background-color", "pink");  
    });  
    $("input").keyup(function(){  
        $("input").css("background-color", "");  
    });  
});  

</script>


      <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>   -->
</head>
<body>
<%



    Connection c=ConnectionProvider.getConn();
  String i=request.getParameter("genid");
out.println("Id is "+i);

%>

  <jsp:include page="../header.jsp" />  
              
                <div class="row">
                  <div class="col-md-2" style="margin-top: 10px;">
                  <jsp:include page="../sidebar.jsp" /> 
                 </div>
                <div class="col-md-10" style=" margin-top: 70px">
               
            <!--  <div class="container-fluid">
            <div class="row" style="background-color:#078afc;">
            <br> 
            <a href="../retrieveDel2.jsp" style="margin-left: 1000px; color:blue;"><button class="btn btn-xs">Show Records</button> </a>
   
            </div>


           </div> -->

<!-- <div class="container-fluid">
  <div class="row" style="background-color:#fffefc;">
        </div>


</div>
 -->
<!-- ----------------------------------------- -->


<div class="container" >
 <div class="row">
    <div class="col-lg-12 " style="background-color:white;border: 1px solid #bfbdbb;">
   <!--   <div class="col-lg-10 col-md-offset-1" > -->
            
            
             <div class="container-fluid" style="background-color:#078afc;">
             
               <div class="row" style="background-color:#078afc;">
                
                   <div class="col-md-12" style="background-color:#f2ede6; border: 1px solid #ffffff;">
                   <h4 style="color: #4ab6e0"> Student Registration Form</h4>
                  
                   </div>
                </div> 

              </div>
              
           
            
<form name="frm" action="regiFormProcess.jsp" method="get"style="margin-top: 30px; margin-bottom: 30px">
  <%
                   

String a=request.getParameter("log");
if("success".equals(a)){
	//out.print("<script>alert('Insereted successfully...................')</script>");
    %><h5 style="color: red; text-align: center; text-shadow: green;" ><% 
    		//out.println("<script> @ successfully !......</script>");
out.println("Data stored successfully......");
}
    %></h5>

 
<!-- <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1> Student Registration Form</h1></td>
</tr></center>
  -->
<table class="table table-bordered table-hover" border='0' width='700px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td >Name:<sup style="color: red;font-size: medium;">*</sup></td>
    <td><input type='text' name='a1' id="name" required="required">
    <input type="hidden" name='stdid' id="name" value="<%=i %>" required="required">
    
    </td>
    <td >Father Name:</td>
    <td><input type='text' name='b1' required="required"></td>
    
</tr>
<!-- <tr> <td>&nbsp;</td> </tr> -->
<tr>
    <td >Email Id:<sup style="color: red;font-size: medium;">*</sup></td>
    <td><input type="email" name='c1' id="email" required="required"></td>
     <td >Mobile No.:<sup style="color: red;font-size: medium;">*</sup></td>
    <%-- <td>  <input type="text"name="d1" onkeypress='return event.charCode >= 48 && event.charCode <= 57'></td> --%>
    <td><input type='number' name='d1' required="required" id="mobile"></td>
</tr>
<!-- <tr> <td>&nbsp;</td> </tr> -->
<tr>
    <td >DOB:</td>
    <td><input type='date' name='e1'  required="required"></td>
    <td >Address:</td>
    <td><input type='text' name='f1'  required="required"></td>
</tr>
<!-- <tr> <td>&nbsp;</td> </tr>
 -->
<!-- <tr> <td>&nbsp;</td> </tr>
 -->
</table>
 
 
        


 <h3 style="color: green; margin-left: 75px;"><a href="#" style="color: green;"><i class="fa fa-plus-circle" aria-hidden="true" id="Add"></i></a> <a href="#"><i id="Remove" style="color: red;" class="fa fa-minus" aria-hidden="true"></i></a></h3>
    <center><div id="mylocation"></div></center>
 
  <center><div id="textboxDiv"></div></center>
 

  
   
     <!--  <label for="comment ">Comment:<span style="color: red;">*</span></label> -->
      <textarea style="margin-left: 200px;" rows="5" cols="100"  placeholder="* Comment:..." name="comment"></textarea>
   
 
  <br><br>
 <center>
   
    <button type="submit" class="btn btn-primary btn-sm" onclick="draft()"> <span class="	glyphicon glyphicon-cloud-upload"></span>&nbsp;Droft</button>
    <button type="submit" class="btn btn-success btn-sm"> <span class="	glyphicon glyphicon-upload"></span>&nbsp;Submit</button>
    <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-repeat"></span>&nbsp;Cancel</button>
      </center>
 	

 
  </form> 


    </div>
  
 </div>
</div>




 
 
 
             
             
          
              </div><!--end col-md-10  -->
    
         </div><!--end heade row  -->


 
 <script>  
        $(document).ready(function() {  
            $("#Add").on("click", function() {
            	
            	var html = '';
            	
            	html += '<div>';
            	html += '<form  action="demo.jsp" method="get" name="vinform"><table class="table table-bordered table-hover" width="300px"><tr>';
              	html += '<td style="width:2%"><input type="text"placeholder="Enter Course..." id="c" name="c" height="33" onkeyup="onkeyupval();"/>';
            	html +=  '<div id="showList"  style=" overflow: visible; position: absolute; visibility: visible; clear:both; background-color: white;">';
                html +=  '<ul class="list-group" style="order:none; list-style: none;">';
                html +=  '</ul>';
                html +=  '</div></td>';
              	html += '<td style="width:2%"><input type="text" placeholder=" EnterPercentage..."id="p" name="p"/></td>';
            	html += '<td style="width:2%"><input type="text" placeholder="Enter passing Year..."id="y" name="y"/>';
            	html += '<td style="width:2%"><input type="text" id="r" name="r" placeholder="Remark" required="required"/>&nbsp;&nbsp;&nbsp;</td>';
            	html += '<input type="hidden" name="hd" value="<%= i %>"/>';
            	html += '<td style="width:2%"><input type="button" class="btn btn-success btn-xs" onclick="sendInfo()" value="add"/></td></tr></table>';
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
    
    
    
    
    <script>  
var request;  
function sendInfo(){  
	
var name=document.getElementById("name").value;
var email=document.getElementById("email").value;
var mobile=document.getElementById("mobile").value;
if(name=="" || email=="" || mobile=="")
	alert("Compulsory fill the text box of Name, Email and Mobile.. ");
else
	{
 var a=document.vinform.c.value; 
var  b=document.vinform.p.value; 
var  c=document.vinform.y.value; 
var  hd=document.vinform.hd.value; 
var  r=document.vinform.r.value; 
//alert("For Name:::::::"+name);
/* alert(a+" "+b+""+c+" "+hd); */
if(a=="" || b=="" || c=="" || r=="")
	alert("  Please fill the all text box fields !");
else{
var url="addmorep.jsp?a="+a+"&b="+b+"&c="+c+"&hd="+hd+"&r="+r; 
  
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
} /* end else of add more */ 
}/* end else of headear if */ 
} 
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val; 

$('#c').val("");
$('#p').val("");
$('#y').val("");
$('#r').val("");
}  
} 

  
</script>
    
<script>
	function draft(){		
		$("#status").val(5);
		var va=$("#status").val();
		document.getElementById("frm").submit();
	}	   

</script>   

 
    
    <!-- for auto Complete -->
   
   
   <script>
   function onkeyupval(){
	   var search=$('#c').val();
     
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
   
   
   
   
    <!-- <script type="text/javascript">
    
	function initAutoComplete(){
		$("#itemCode").autocomplete({
			source : function(request, response) {
				$.getJSON("${pageContext.request.contextPath}/jobOrder/getJobOrderAutocompletor.html",
								{
									term : extractLast(request.term)
								}, response);
			},
			search : function() {
				var term = extractLast(this.value);
				if (term.length < 1) {
					return false;
				}
			},
			focus : function() {
				return false;
			},
			select : function(event, ui) {
				var terms = split(this.value);
				terms.pop();
				terms.push(ui.item.value);
				this.value = ui.item.value;
				var val = ui.item.value;
				var empId = val.split("(-");
				empId = empId[1].split("-)");
				$("#jobOrderForm").val(empId[0]);
				 $.ajax({
					url:"${pageContext.request.contextPath}/master/getItemById.html?itemId="+encodeURIComponent(empId[0]),
					type:"POST",
				    data:"",
				    success:function(data){
				    	$("#itemCode").val(data.itemName);
				    	$("#itemId").val(data.itemId);
				    	$("#description").val(data.description);
				    	//$("#uomitemCode").val(data.unitBean.id);
				    	//$("#uom").val(0);
				    	//$("#uomFrom").val(0);
				    	//$("#uomTo").val(0);
				    	//$("#altUom").val(0);
				    	//$("#totalSqft").val("");
				    	//$("#firstUom").val("");
				    	//$("#rate").val("");
				    	//$("#amount").val("");
				    	//$("#quantity").val("");	
					}
				}) 
			}
		})
	}
 -->
    
    
    
    </script>
</body>
</html>