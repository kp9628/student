<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="style.css" type="text/css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" >
<link href="bootstrap/css/bootstrap-grid.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">


<script>  
var request;  
function sendInfo(){  alert("hi")
	//var email='';
 var a=document.vinform.t4.value; 
var  b=document.vinform.t3.value; 
alert(a+" "+b);
var url="demo.jsp?a="+a+"&b="+b;  
  
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
</head>
<body bgcolor="#FFCCFF" >


<div class="row"><br/><br/><br/>
   <div class="col-md-3"></div>
   <div class="col-md-6">
   <table   border="1" class="table table-striped">
   <tr><td>
 
 <form class="form" action="demo.jsp" method="get" name="vinform">
 
  
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-envelope"></i></span>
    <input id="email" type="email" class="form-control" name="t3" placeholder=" Enter your Email..." required>
  </div><br>
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-envelope"></i></span>
    <input id="email" type="text" class="form-control" name="t4" placeholder=" Enter your name..." required>
  </div><br>
  <div class="input-group">
   <input type="button" class="btn btn-xs" onclick="sendInfo()" value="Check Availability"/>  
   <span id="mylocation" style="color:red;font-size:12px;">
   
   
   
   
   
   
   <%
   String inv=request.getParameter("log");
   if("invalid".equals(inv))
	   out.print("Opps!! this email Id is allready  registered.....Please Try again with new email Id.. <span style='color:blue'><i class='glyphicon glyphicon-user'></i><span>");  
	
   %>
   
   </span> 
</div>
              
              
 
                              
 
  
  <br/>
 
  <div class="btn-group btn-group-justified">
     <div class="btn-group">
     <button type="submit" class="btn btn-primary">Submit</button>
     </div>
      <div class="btn-group" >
    <button type="reset" class="btn btn-danger">Clear</button>
    </div>
</div>
</fieldset>
  
</form>

   
  </td></tr> 
   </table>
   
    <center><a href="retrieveDel.jsp">Show only student</a>... ___________________________
                                <a href="showQualistd.jsp">Show record with qualification...</a></center>
   
   
   </div>
   
   
   <div class="col-md-3"></div>
</div>

</body>
</html>