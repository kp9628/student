<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>
    
    <body>    


        <div class="container"><br><br>
            <label>Enter Course name</label><br>
            <input type="text" id="txtCourse" placeholder="enter course name">
            <div id="showList">
                <ul class="list-group" style="order:none; list-style: none;">
                </ul>
            </div>
        </div>
    </body>
    
</html>

<script>

        $(document).ready(function(){
            $('#txtCourse').keyup(function(){
            	
                var search=$('#txtCourse').val();
                if(search !=='' && search !==null)
                {    
                    $.ajax({ 
                       type:'POST',
                       url:'record.jsp',
                       data:'key='+search,
                       success:function(data)
                       {
                           $('#showList').html(data);
                       }
                  
                    }); 
                }
                else
                {
                    $('#showList').html('');
                }
            });
            $(document).on('click','li',function(){
               $('#txtCourse').val($(this).text());
               $("#showList").empty();
            });
            
        });
</script>