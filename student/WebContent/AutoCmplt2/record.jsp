<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import= "java.util.*"%>
<%@ page language="java" import="java.sql.*" %>
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
    if(request.getParameter("key")!=null) 
    {
        String key=request.getParameter("key"); 
        String wild="'%" +key+ "%'"; //remove "%" for use preparedstatement in query name like, and "key" variable store in "wild" variable for further use

     //  out.println(".........................."+wild);
    
       
        try
        {
        	Connection con=ConnectionProvider.getConn();
        	 PreparedStatement pstmt=null;
        	
        	
        	 // out.println("...con......................."+con);
            
            pstmt=con.prepareStatement("SELECT course FROM qualification WHERE course LIKE '%"+key+"%' limit 5");
            
            
            //pstmt.setString(1,wild); 
          //  out.println("...con......................."+pstmt);
            ResultSet rs=pstmt.executeQuery();            
            while(rs.next())
            {
                %>
                  <a href="#" style="color: black;text-decoration: none;">  <li style="list-style: none;"><%=rs.getString(1)%></li></a>
                <%
            }
             //   con.close(); //close connection
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
%>
</body>
</html>