<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
   
      <!--  <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <style type="text/css">
body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


           <jsp:include page="header.jsp" />  
              
                <div class="row">
                  <div class="col-md-2" style="margin-top: 10px;">
                  <jsp:include page="sidebar.jsp" /> 
                 </div>
                <div class="col-md-10" style=" margin-top: 70px">
             <%    
           String log=request.getParameter("log");
          if("NotAvailable".equals(log)){
           %><h4 style="color: red;"> <% out.println("Sorry!..This Qualification already stored in DataBase..."); %> </h4>
           <%} %>
                 
                  <form method="get" action="insertprocess.jsp">
                   Qualification: <input type="text" id="q" name="q" required="required"><br>
                   Course Code: <input type="text" id="cc" name="cc" required="required"><br>
                 <!--   Status: <input type="text" id="s" name="s" required="required"><br> -->
                   <button type="submit">submit</button>
          
                  </form> 
          
             </div>
    
         </div>
    
    </div>

</body>
</html>