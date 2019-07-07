
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
out.println("id.."+id);                                                   /*  LIKE '%"+key+"%'"*/
String q=request.getParameter("q");
String cc=request.getParameter("cc");
String s=request.getParameter("s");
Connection con=ConnectionProvider.getConn();

PreparedStatement ps = null;


try
{
	
String sql="Update qualification set course=?, coursecode=?, status=?  where id="+id;
ps = con.prepareStatement(sql);
//	out.println("..................................."+sql);
ps.setString(1,q);
ps.setString(2,cc);
ps.setString(3,s);

int i1 = ps.executeUpdate();
if(i1 > 0)
{
	
	//out.print("<script>alert('Update successfully.......')</script>");
	//response.sendRedirect("retrieveDel.jsp");
	response.sendRedirect("show.jsp?log1=success"); 
 // out.print("Record Updated Successfully.......");
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



%>

</body>
</html>