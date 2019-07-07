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
      
        
        
        

<%!
Connection c=ConnectionProvider.getConn(); %>
<%
    
String h1=request.getParameter("h1");
String h2=request.getParameter("h2");
String h3=request.getParameter("h3");

//out.println("name in admore....:"+h1+"..."+h2+"..."+h3+"...");
PreparedStatement ps=c.prepareStatement("insert into std1 (name,age,email) values(?,?,?)");
ps.setString(1,request.getParameter("h1"));
ps.setString(2,request.getParameter("h2"));
ps.setString(3,request.getParameter("h3"));
int i=ps.executeUpdate();
if(i>0){ %>

	<% out.println("data successfuly stored......");%>
        

<%}
else
	out.println("data not stored......");
%>
        
   <form action="addmoreprocess.jsp" method="get" align="center" bgcolor="#667788">
    
   <br/> <br/> <br/> <br/> <br/>
   <center><pre>                                  <a href="retrieveDel.jsp">Show all record</a></pre></center>
  <table align="center" bgcolor="#FFCC99">

<tr><th>Qualification :</th><th colspan="2"><input type="text" name="t4" placeholder=" Eg: bca" required="required"/></th></tr>
<tr><th>Percentage:</th><th colspan="2"><input type="text" name="t5" placeholder=" Eg: 60%" required="required"/></th></tr>
<tr><th>Passing year:</th><th colspan="2"><input type="text" name="t6" placeholder=" Eg: 2009" required="required"/></th></tr>


<tr><th colspan="2"><input type="submit" value="Submit"/> &nbsp;<input type="reset" value="Clear"/></th></tr>
</table>
    <input type="hidden" name="h1" value="<%=h1%>;">
    <input type="hidden" name="h2" value="<%=h2%>;">
    <input type="hidden" name="h3" value="<%=h3%>;">
    

   </form>
   
    </body>
</html>
