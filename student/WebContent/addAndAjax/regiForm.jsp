<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect2.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

      <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>   -->
</head>
<body>
<%



  Connection c=ConnectionProvider.getConn();
String idk1=null;
int i=0;

Statement st= c.createStatement();
ResultSet rs=st.executeQuery("select *from reg ORDER BY id DESC limit 1" );
try{
while(rs.next()){
	
//out.println(rs.getString("id"));
  // out.println("....... data value...");
//out.println(rs.getInt("id"));

 i=(Integer)rs.getInt("id");
 out.println("...Previous Id is..."+i);

i=i+1;
out.println("...Generated id is..."+i);
}

}
catch (Exception e) {
e.printStackTrace();
}


%>



<div class="container">  <div class="row" style="background-color:	rgb(128, 128, 128)	;">
<br>
<span style="background-color: aqua;"></span>
</div>
<br>



</div>

<!-- ----------------------------------------- -->

<div class="container" >
 <div class="row">
    <div class="col-lg-10 col-md-offset-1" >

<form action="regiFormProcess.jsp" method="get">
 

 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1> Student Registration Form</h1></td>
</tr><center>
 
<table border='0' width='700px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td >Name:</td>
    <td><input type='text' name='a1' required="required"></td>
    <td >Father Name:</td>
    <td><input type='text' name='b1'  required="required"></td>
    
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td >Email Id:</td>
    <td><input type="email" name='c1' required="required"></td>
     <td >Mobile No.:</td>
    <%-- <td>  <input type="text"name="d1" onkeypress='return event.charCode >= 48 && event.charCode <= 57'></td> --%>
    <td><input type='number' name='d1' ></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td >DOB:</td>
    <td><input type='date' name='e1'  required="required"></td>
    <td >Address:</td>
    <td><input type='text' name='f1'  required="required"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>

<tr> <td>&nbsp;</td> </tr>

</table>
 
</table>

 


 
 <center>
  <button id="Add">AddMore..</button> <button id="Remove">X</button>  
     <br> <span id="mylocation" style="color:green;font-size:14px;">
    </center>
 
  <center><div id="textboxDiv"></div></center>
  <br><br>
 <center><input type="submit" value="submit!" class="btn btn-primary"></center>
 

  
  </form> 


    </div>
  
 </div>
</div>




 
 
 
 
 
 <script>  
        $(document).ready(function() {  
            $("#Add").on("click", function() {
            	
            	var html = '';
            	
            	html += '<div>';
            	html += '<form  action="demo.jsp" method="get" name="vinform">';
              	html += '<input type="text" name="c"/>';
            	html += '<input type="text" name="p"/>';
            	html += '<input type="text" name="y"/>';
            	html += '<input type="hidden" name="hd" value="<%= i %>"/>';
            	html += '<input type="button" class="btn btn-xs" onclick="sendInfo()" value="add"/>';
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
function sendInfo(){  alert("hi")
	//var email='';
 var a=document.vinform.c.value; 
var  b=document.vinform.p.value; 
var  c=document.vinform.y.value; 
var  hd=document.vinform.hd.value; 
alert(a+" "+b+""+c+" "+hd);
var url="addmorep.jsp?a="+a+"&b="+b+"&c="+c+"&hd="+hd; 
  
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