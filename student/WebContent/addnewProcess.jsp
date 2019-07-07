    
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

		
/* 
String n1="";
String n2="";
String n3="";
String n4="";
String n5="";
String n6="";
String n7="";
String n8="";
String n9="";
 */
//String h1=request.getParameter("h1");
//out.println("msg:"+h1);
String date=(new java.util.Date()).toLocaleString();
PreparedStatement ps=c.prepareStatement("insert into std3 (name,fname,email,mobile,dob,address,comment,status,regdate) values(?,?,?,?,?,?,?,?,?)");
out.println("msg:"+ps);
ps.setString(1,"");
ps.setString(2,"");
ps.setString(3,"");
ps.setString(4,"");
ps.setString(5,"");
ps.setString(6,"");
ps.setString(7,"");
ps.setString(8,"2");
ps.setString(9,date);

int i=ps.executeUpdate();
     if(i>0){ 
    	       int i2=0;
              Statement st= c.createStatement();
    	        ResultSet rs=st.executeQuery("select *from std3 ORDER BY id DESC limit 1" );
    	         try{
    	           while(rs.next())
    	            {
    	 	        i2=(Integer)rs.getInt("id");
    	             out.println("...Previous Id is..."+i2);
    	             response.sendRedirect("addAndAjax/regiForm2.jsp?genid="+i2);
    	           }

    	         }
    	     catch (Exception e) {
    	     e.printStackTrace();
    	     }



  	out.println("data  stored.......");
   // response.sendRedirect("index.jsp?flag1=suc");
     }
     
     else
	out.println("data not stored.......");

		
 %>
 
</table>
   
   </form>
</body>
</html>
