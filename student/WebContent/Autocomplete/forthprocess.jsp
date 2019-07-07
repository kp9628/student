<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import= "java.util.*"%>
<%@ page language="java" import="java.sql.*" %>

<%
String str=request.getParameter("queryString");
try {

Connection con=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement stm=con.createStatement();
/* String q="select * from qualification";
 */
String sql = "SELECT course FROM qualification  WHERE course LIKE '"
+str+"%' LIMIT 10";
ResultSet rs=stm.executeQuery(sql);
out.println("rs..."+rs);

while (rs.next ()){
out.println("<li onclick='fill("+rs.getString("course")+");'>"
+rs.getString("course")+"</i>");
}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>