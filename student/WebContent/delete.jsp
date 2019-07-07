  <%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
 
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%


Connection c=ConnectionProvider.getConn();
 String id=request.getParameter("id");
 out.println("id is......"+id);
Statement st=c.createStatement();
int i=st.executeUpdate("DELETE FROM std3 WHERE ID="+request.getParameter("id"));
//out.println(st.executeUpdate("DELETE FROM std WHERE sname='+id' "));

%>
<center>
<%
if(i>0){
	
	
	int i1=st.executeUpdate("DELETE FROM quali WHERE stdid="+request.getParameter("id"));
	  response.sendRedirect("retrieveDel2.jsp?log1=delete");
	
   }
else
out.println("data Not Deleted !!!!!......");%>
    </center>
<%-- <%@ include file="retrieve.html" %> --%>