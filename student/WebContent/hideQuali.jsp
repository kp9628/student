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
String sttus="2";
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
ps.setString(1,(sttus));


int i = ps.executeUpdate();
if(i > 0)
{
	out.println("Delete..........................");
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
	out.println(sql);
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

<script type="text/javascript">
alert(" deletade......");

</script>
</center></body></html>