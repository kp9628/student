
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=ConnectionProvider.getConn();
String q= request.getParameter("q");
String cc= request.getParameter("cc");
/* String s= request.getParameter("s"); */
out.print("data....."+cc);

try{  
	PreparedStatement ps=con.prepareStatement("select * from qualification where course=? AND coursecode=?");  
	out.print("ps....."+ps);
	ps.setString(1,q);  
	ps.setString(2,cc);  
	ResultSet rs=ps.executeQuery();  
	if(rs.next()){  
		response.sendRedirect("insert.jsp?log=NotAvailable");
	}
	
   else{  

                try
                {
	             PreparedStatement ps1=con.prepareStatement("insert into qualification (course,coursecode,status) values(?,?,?)");
	             ps1.setString(1,(q));
	             ps1.setString(2,(cc));
	             ps1.setString(3,("Active"));
                 int i1 = ps1.executeUpdate();
                 if(i1 > 0)
                   {
		            response.sendRedirect("show.jsp?log1=success");
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
		
} /* header else close */ 
}catch(Exception e){out.print(e);}  

%>

</body>
</html>