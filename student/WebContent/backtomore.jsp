<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="backtomoreprocess.jsp" method="get" align="center" bgcolor="#667788">
    
   <br/> <br/> <br/> <br/> <br/>
   <center><pre>                                  <a href="retrieveDel.jsp">Show all record</a></pre></center>
  <table align="center" bgcolor="#FFCC99">

<tr><th>Qualification :</th><th colspan="2"><input type="text" name="t4" placeholder=" Eg: bca" required="required"/></th></tr>
<tr><th>Percentage:</th><th colspan="2"><input type="text" name="t5" placeholder=" Eg: 60%" required="required"/></th></tr>
<tr><th>Passing year:</th><th colspan="2"><input type="text" name="t6" placeholder=" Eg: 2009" required="required"/></th></tr>


<tr><th colspan="2"><input type="submit" value="Submit"/> &nbsp;<input type="reset" value="Clear"/></th></tr>
</table>
    
   </form>
      
   thank uuuu..
    </body>
</html>
