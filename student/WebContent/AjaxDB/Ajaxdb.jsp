<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() { 
        $('#save').click(function ()
        {
        	
        	var name=$('#name').val();
        	var age=$('#age').val();
        	var id=$('#id').val();
        	alert("hello.."+name+".."+age+".."+id+"..");
        	
            $.ajax({
                type: "post",
                url: "AjaxdbProcess.jsp", //this is my servlet
                data: "name=" +$('#id').val()+"&pass="+$('#op').val(),
                success: function(msg){  
                	$('#myloc').append(msg);
                	$('#id').val("");
                	$('#op').val("");
                }
            });
        });

    });
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body><form>
    name:<input id="name" type="text" name="" value="" /><br></br>
   age:<input id="age" type="text" name="" value="" /><br></br>
   <!--  <input type="button" value="save" name="save" id="save"/>
    -->
   </form>
  <div id="myloc"></div>


<form>
    input:<input id="id" type="text" name="" value="" /><br></br>
    output:<input id="op" type="text" name="" value="" /><br></br>
    <input type="button" value="save" name="save" id="save"/>
   <div id="myloc"></div>
   </form>
</body>  