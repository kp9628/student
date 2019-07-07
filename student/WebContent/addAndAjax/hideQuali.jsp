<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="connect.ConnectionProvider"%>
 <title>update-process.jsp</title>
<html>
<body>

<%
Connection con=ConnectionProvider.getConn();

String id = request.getParameter("idq");
out.println("id...."+id);
if(id != null)
{

PreparedStatement ps = null;

try
{
	//out.println("id...."+id);
String sql="Update quali set status=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,("2"));


int i = ps.executeUpdate();
if(i > 0)
{
	%>
	 <center>
	<a href="retrieveDel.jsp"><h3>Show....</h3>.</a></center>
	<%
	out.print("<script>alert('Update successfully.......')</script>");
	//response.sendRedirect("retrieveDel.jsp");
	//response.sendRedirect("retrieveDel.jsp?log1=success");
   //out.print("Record Updated Successfully.......");
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
}
%>
</center></body></html>