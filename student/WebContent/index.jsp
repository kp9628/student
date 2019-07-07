  <!-- https://www.w3schools.com/angular/tryit.asp?filename=try_ng_app5 -->
  
  <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" >
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body bgcolor="#FFCCFF" >
<div class="container-fluid">

                            <div class="row">
                                   
                                      <div class="col-md-12" style="background-color: rgb(132, 127, 226); color:white " align="center"><h3>Students Registration..</h3></div>
                                   
                                   
                                   </div>
                            
</div>
<%
 Connection c=ConnectionProvider.getConn();
String idk1=null;
int i4=0;

Statement st= c.createStatement();
ResultSet rs=st.executeQuery("select *from std1 ORDER BY id DESC limit 1" );
try{
while(rs.next()){
	
//out.println(rs.getString("id"));
  // out.println("....... data value...");
//out.println(rs.getInt("id"));

 i4=(Integer)rs.getInt("id");
 out.println("...Previous Id is..."+i4);

i4=i4+1;
out.println("...Generated id is..."+i4);
}

}
catch (Exception e) {
e.printStackTrace();
}



%>


<div class="row"><br/>
   <div class="col-md-3"></div>
   <div class="col-md-6">
   <table   border="1" class="table table-striped">
   <tr><td>
 
 <form class="form" action="indexprocess.jsp" method="get" name="form1">
 
 <fieldset style="border-color:green">
    <legend>
        Submission Form...
        
   <%     
        
String glg=request.getParameter("flag1");
if("suc".equals(glg))
{%> <span style="color: Red; font-size: 12">  <% 
	out.println("Data stored successfully......");
	
%>  </span>    <% }

%>
        
    </legend>
              <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-user"></i></span>
    <input type="text" class="form-control" name="t1" placeholder="Enter your name..." required>
  </div><br>
  
    
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-user"></i></span>
    <input id="age" type="text" class="form-control" name="t2" placeholder=" Enter your Age (eg. 24 )" required>
  </div><br>
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-envelope"></i></span>
    <input id="email" type="email" class="form-control" name="t3" placeholder=" Enter your Email..." required>
  </div><br>
  
  
  <div class="row">
    <div class="col-md-8">
    <div class="input-group">
   <input type="button" class="btn btn-xs" onclick="sendInfo()" value="Check Availability"/>  
   <span id="MainFormlocation" style="color:red;font-size:12px;">
   <%
   String inv=request.getParameter("log");
   if("invalid".equals(inv))
	   out.print("Opps!! this email Id is allready  registered.....Please Try again with new email Id.. <span style='color:blue'><i class='glyphicon glyphicon-user'></i><span>");  
	
   %>
   
   
   
   </span> 
</div>
    
    </div>
    <div class="col-md-4">
    
  <center>
  <button id="Add1" class="btn btn-default btn-xs">AddMore..</button> <button id="Remove" class="btn btn-danger btn-xs">X</button>  
    
    </center>

  
    
    
    </div>
  </div>
  
              
              
       
   <div>
       <div id="textboxDiv1">     <!------- here add more box open -->
       <br/><span id="form2location" style="color:green;font-size:14px;"></span></div><!-- here output of course items -->
       <br/>
   </div>
                               
 
  
  <br/>
 
<form>
    <div class="form-group">
     <!--  <label for="comment ">Comment:<span style="color: red;">*</span></label> -->
      <textarea class="form-control" rows="5" placeholder="* Comment:..." name="coment"></textarea>
    </div>
  </form>
 
 
  <div class="btn-group btn-group-justified">
     <div class="btn-group">
     <button type="submit" class="btn btn-primary">Submit</button>
     </div>
      <div class="btn-group" >
    <button type="reset" class="btn btn-danger">Clear</button>
    </div>
</div>
</fieldset>
  
</form><!----------------------------- main Form close-------------------- -->

   

   
  </td></tr> 
   </table>
   
    <center><a href="retrieveDel.jsp">Show only student</a>... ___________________________
     <a href="showQualistd.jsp">Show record with qualification...</a></center>
   
   
   </div>
   
   
   <div class="col-md-3"> &nbsp;
   
   
   
   
   
   </div>
</div>
<script>  
      //  $(document).ready(function() {  
            $("#Add1").on("click", function() {
            	
            	var html = '';
            	/* var k=156;
 */            	
            	html += '<div>';
            	html += '<form  method="get" name="form2"><table align="left" rowspading="4"><tr><td>' ;
              	html += '<input type="text" id="c1" name="c1"placeholder="Course.."size="3" required="required"/>&nbsp;&nbsp;&nbsp;<td/> ';
            	html += '<td><input type="number" id="p1" name="p1" size="8" placeholder="Percentage.." required="required"/>&nbsp;&nbsp;&nbsp;<td/>';
            	html += '<td><input type="number" id="y1" name="y1" placeholder="Year.." required="required"/>&nbsp;&nbsp;&nbsp;<td/>';
            	html += '<td><input type="text" id="r" size="3" name="r" placeholder="Remark" required="required"/>&nbsp;&nbsp;&nbsp;<td/>';
            	html += '<input type="hidden" name="hd1" value="<%= i4 %>"/>';
            	html += '<td><input type="button" class="btn btn-success btn-xs" onclick="sendInfo1()" value="+"/><td/>';
            	html += '<tr/><table/></form>';
            	html += '<br/>';
            	//"<div><br><form method='post' id=''>Course:<input type='text' name='c'/>Percentage:<input type='text' name='p'/>Passing Year:<input type='text' name='y'/><button type='button' id='savedata' onclick='"return saveData();"' >Add</button><br></form></div>"
                $("#textboxDiv1").append(html);  
            });  
            $("#Remove").on("click", function() {  
                $("#textboxDiv1").children().last().remove();  
            });  
        //});  
    </script>   
    
    
    
    
     
    <script>  
var request;  
function sendInfo1(){ 
	//var email='';
 var a=document.form2.c1.value; 
var  b=document.form2.p1.value; 
var  c=document.form2.y1.value; 
var  r=document.form2.r.value; 
var hd1=document.form2.hd1.value;  
alert(a+" "+b+""+c+""+hd1); 

 var url="addmorep.jsp?a="+a+"&b="+b+"&c="+c+"&hd="+hd1+"&r="+r;
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
try{  
request.onreadystatechange=getInfo1;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo1(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('form2location').innerHTML=val;  

$('#c1').val("");
$('#p1').val("");
$('#y1').val("");
$('#r').val("");
}   
}  
  
</script>


<!--Start <Script> for  Main form  -->

<script>  
var request;  
function sendInfo(){  
var email=document.form1.t3.value;  
var url="EmailFinder.jsp?email="+email;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('MainFormlocation').innerHTML=val;  
}  
}  
  
</script>
  
</body>
</html>