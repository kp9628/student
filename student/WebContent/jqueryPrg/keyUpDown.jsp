<!DOCTYPE html>  
<html>  
<head>  
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
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
</head>  
<body>  
Write something: <input type="text">  
</body>  
</html> 