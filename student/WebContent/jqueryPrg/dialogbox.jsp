<!doctype html>  
<html lang="en">  
   <head>  
      <meta charset="utf-8">  
      <title>jQuery UI Dialog functionality</title>  
      <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
      <script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
      <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
      <!-- CSS -->  
      <style>  
         .ui-widget-header,.ui-state-default, ui-button{  
            background: lightyellow;  
            border: 1px solid #b9cd6d;  
            color: black;  
            font-weight: bold;  
         }  
      </style>  
      <!-- Javascript -->  
      <script>  
         $(function() {  
            $( "#dialog-3" ).dialog({  
               autoOpen: false,   
               hide: "slide",  
               show : "slide",  
               height: 200        
            });  
            $( "#opener-3" ).click(function() {  
               $( "#dialog-3" ).dialog( "open" );  
            });  
         });  
      </script>  
   </head>  
   <body>  
      <!-- HTML -->   
      <div id="dialog-3" title="This is a title.">This is a dialog.</div>  
      <button id="opener-3">Open Dialog</button>  
   </body>  
</html>  

 