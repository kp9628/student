<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
      <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">

var currentdate = new Date(); 
var datetime = "Last Sync: " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + " @ "  
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();

</script>

</head>
<body>
 
<% 
Connection con=ConnectionProvider.getConn();

String date=(new java.util.Date()).toLocaleString();

String stdid=request.getParameter("stdid"); 
String a=request.getParameter("a1"); 
String b=request.getParameter("b1"); 
String c=request.getParameter("c1"); 
String d=request.getParameter("d1"); 
String e=request.getParameter("e1"); 
String f=request.getParameter("f1"); 
String comment=request.getParameter("comment"); 
String status="";



/* out.println(a+"..."+b+"..."+c);
System.out.println("course............."+a);
 */Connection connection=null; 
 /* if(a=="" || b=="" || c=="" || d=="" || e=="" || f=="" || comment=="")
{
	 out.print("Blank fields are not allowed....");
 
}
 else
 { */
	PreparedStatement ps = null;
	
	
	try
	{
		
	String sql="Update std3 set name=?, fname=?, email=?, mobile=?, dob=?, address=?, comment=?, status=?, regdate=? where id="+stdid;
	ps = con.prepareStatement(sql);
	out.println("..................................."+sql);
	ps.setString(1,a);
	ps.setString(2,b);
	ps.setString(3,c);
	ps.setString(4,d);
	ps.setString(5,e);
	ps.setString(6,f);
	ps.setString(7,comment);
	ps.setString(8,status);
	ps.setString(9,date);
	
	

	int i1 = ps.executeUpdate();
	if(i1 > 0)
	{
		
		//out.print("<script>alert('Update successfully.......')</script>");
		//response.sendRedirect("retrieveDel.jsp");
		response.sendRedirect("../retrieveDel2.jsp"); 
	      out.print(" header Record Updated Successfully.......");
	 }
	else
	 {
		
		
	out.print("There is a problem in updating Record......");
		

	}
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	
	
	
	
/* } /* end else*/ 

	
%>
</body>
</html>