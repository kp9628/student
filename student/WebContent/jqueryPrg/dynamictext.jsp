<html>  
  
<head>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  
</head>  
  
<body> <button id="Add">add+</button> <button id="Remove">remove</button>  
    <div id="textboxDiv"></div>  
    <script>  
        $(document).ready(function() {  
            $("#Add").on("click", function() {  
                $("#textboxDiv").append("<div><br>name:<input type='text' name='n'/>age:<input type='text' name='a'/> <button id='Remove'>remove</button><br></div>");  
            });  
            $("#Remove").on("click", function() {  
                $("#textboxDiv").children().last().remove();  
            });  
        });  
    </script>  
</body>  
  
</html>  