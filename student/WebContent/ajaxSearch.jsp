<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
<script>  
var request=new XMLHttpRequest();  
function searchInfo(){  
var name=document.vinform.name.value;  
var url="AjaxRetriveDelSearch.jsp?val="+name;  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>  
</head>  
<body>  
<h1>Search Student...</h1>  
<form name="vinform">  
<input type="text" name="name" onkeyup="searchInfo()">  
</form>  
  
<span id="mylocation"></span>  
</body>  
</html>>