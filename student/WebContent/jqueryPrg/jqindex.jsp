<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="style.css" type="text/css" rel="stylesheet" />
<link href="..//bootstrap/css/bootstrap.css" rel="stylesheet" >
<link href="..//bootstrap/css/bootstrap-grid.css" rel="stylesheet">
<link href="..//bootstrap/css/bootstrap.min.css.map" rel="stylesheet">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">  
 </script>  
</head>
<body>
<script>  
$(document).ready(function(){  
    $("#b").click(function(){  
        $("p").html("Hello <b>Javatpoint.com</b>");  
    });  
});  
</script>  

<body>  
<button>Click here to change the content of all p elements</button>  
<p>This is a paragraph.</p>  
<p>This is another paragraph.</p>  
</body>  
<button class="btn btn-success" id="b">add</button>
</body>
</html>