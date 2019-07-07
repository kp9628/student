<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 
Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1
-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Auto Complete</title>
  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript">
function lookup(inputString) {
if(inputString.length == 0) {
$('#suggestions').hide();
} else {
$.post("forthprocess.jsp", {queryString: ""+inputString+""}, function(data){
if(data.length >0) {
$('#suggestions').show();
$('#autoSuggestionsList').html(data);
}
});
}
}
function fill(thisValue) {
$('#inputString').val(thisValue);
setTimeout("$('#suggestions').hide();", 200);
}
</script>
<style type="text/css">
body {
font-family: Helvetica;
font-size: 13px;
color: #000;
}
h3 {
margin: 0px;
padding: 0px;
}
.suggestionsBox {
position: relative;
left: 30px;
margin: 0px 0px 0px 0px;
width: 200px;
background-color:;
-moz-border-radius: 7px;
-webkit-border-radius: 7px;
border: ;
color: ;
}
.suggestionList {
margin: 0px;
padding: 0px;
}
.suggestionList li {
margin: 0px 0px 3px 0px;
padding: 3px;
cursor: pointer;
}
.suggestionList li:hover {
background-color:;
}
</style>
</head>
<body>
<div>
<form>
<div><center>
<br /> Enter Course
<input type="text" size="30" value="" id="inputString" 
onkeyup="lookup(this.value);" onblur="fill();" />
</center></div>
<div class="suggestionsBox" id="suggestions" style="display: block;">
<div class="suggestionList" id="autoSuggestionsList">
</div>
</div>
</form>
</div>
</body>
</html>