<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%
String name=(String)request.getParameter("param1");
out.println(name+"...");
Connection connection=null; 
//out.println(connection);
try { 
 Class.forName("com.mysql.jdbc.Driver"); 
 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentaj","root", "root");
 String query="insert into quali(course) values('"+name+"')";
 Statement st=connection.createStatement();
 st.executeUpdate(query);
} catch (ClassNotFoundException e) {
 e.printStackTrace();
} catch (SQLException e) {
 e.printStackTrace();
}

out.println(connection);
%>