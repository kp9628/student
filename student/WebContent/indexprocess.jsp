    
      <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>reg.jsp</title>
</head>
<body>
<% 

Connection c=ConnectionProvider.getConn();
//Start check availabilty..
String email=request.getParameter("t3");  
if(email.contains("@")&&email.contains(".")&&email.contains(".com")||email.contains(".in")||email.contains(".org"))
{  
	
	PreparedStatement ps4=c.prepareStatement("select * from std1 where email=?");  
	ps4.setString(1,email);  
	ResultSet rs4=ps4.executeQuery();  
	if(rs4.next()){  
		response.sendRedirect("index.jsp?log=invalid");
	}
	
	else
	{
		
		// Start Data insert......
		

String n1=request.getParameter("t1");
String n2=request.getParameter("t2");
String n3=request.getParameter("t3");
String n4=request.getParameter("snd");
String coment=request.getParameter("coment");
//String h1=request.getParameter("h1");
//out.println("msg:"+h1);
PreparedStatement ps=c.prepareStatement("insert into std1 (name,age,email,coment) values(?,?,?,?)");
ps.setString(1,request.getParameter("t1"));
ps.setString(2,request.getParameter("t2"));
ps.setString(3,request.getParameter("t3"));
ps.setString(4,request.getParameter("coment"));
int i=ps.executeUpdate();
     if(i>0){ %>
       <%-- <form action="addmore.jsp" method="post">
    

    <table align="center"  height="30%" width="40%"><center><br/>
	<% out.println("data  stored successfuly..........");%></center><br/>
        <tr><th><a href="index.jsp"> Back to home ....</a></th><th><input type="submit" value="Add More..."></th><th><a href="retrieveDel.jsp"> Show All Record ....</a></center></th></tr>
      --%>  
      
      <% 
      
    response.sendRedirect("index.jsp?flag1=suc");
     }
     else
	out.println("data not stored.......");

		
		
		// End Data insert..
	   }  
	 
	}  // End check availabilty..
		
%>


  <%--   
  <input type="hidden" name="h1" value="<%=n1%>">
  <input type="hidden" name="h2" value="<%=n2%>">
  <input type="hidden" name="h3" value="<%=n3%>">
  --%>
 
 
</table>
   
   </form>
</body>
</html>
