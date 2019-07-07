<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
 function take_values(){
 var n=document.forms["myform"]["name"].value;
 if (n==null || n=="") {
 alert("Please enter User Name");
 return false;
 }else{
 var http = new XMLHttpRequest();
 http.open("POST", "http://localhost:8080/Submit_Form/b.jsp", true);
 http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
 var params = "param1=" + n; // probably use document.getElementById(...).value
 http.send(params);
 http.onload = function() {
 alert(http.responseText);
 }
 } 
 } 
</script>
</head>
<body>
<center>
<form name="myform" >
 Name <input type="text" name="name">
<br>
<input type="button" value="Submit" onclick="return take_values()">
</form>
</center>
</body>
</html>