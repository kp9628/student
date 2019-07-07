<!doctype html>  
<html lang="en">  
   <head>  
      <meta charset="utf-8">  
      <title>jQuery UI Datepicker functionality</title>  
      <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
      <script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
      <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
      <!-- Javascript -->  
      <script>  
         $(function() {  
            $( "#datepicker-11" ).datepicker({  
               showWeek:true,  
               yearSuffix:"-CE",  
               showAnim: "explode"  
            });  
         });  
      </script>  
   </head>  
   <body>  
      <!-- HTML -->   
      <p>Enter Date: <input type="text" id="datepicker-11"></p>  
   </body>  
</html>  

 