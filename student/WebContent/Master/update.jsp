
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page import="connect.ConnectionProvider"%>

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

<%
String id=request.getParameter("id");
//out.println("id..."+id);
Connection con=ConnectionProvider.getConn();


//String id=request.getParameter("t1");
Statement st=con.createStatement();
String q="select * from qualification where id="+id;
ResultSet rs=st.executeQuery(q);
%>






           <jsp:include page="header.jsp" />  
              
                <div class="row">
                  <div class="col-md-2" style="margin-top: 10px;">
                  <jsp:include page="sidebar.jsp" /> 
                 </div>
                <div class="col-md-10" style=" margin-top: 70px">
                  <form method="get" action="updateprocess.jsp">
                  <%
               while(rs.next())
                   { 
            	
                    %>   
                    <input type="hidden" name="id" value="<%out.println(rs.getString(1));%>">
                     Qualification: <input type="text" id="q" name="q" value="<%out.println(rs.getString(2));%>" required="required"><br>
                     Course Code: <input type="text" id="cc" name="cc" value="<%out.println(rs.getString(3));%>" required="required"><br>
                     Status :&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <input type="text" id="s" name="s" value="<%out.println(rs.getString(4));%>" required="required"><br>
                  
                   <button type="submit">Update</button>
          <%} %>
                  </form> 

             </div>
    
         </div>
    
    </div>

</body>
</html>