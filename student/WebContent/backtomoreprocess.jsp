<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        
        <%! 
            Connection c=ConnectionProvider.getConn();%>
            <%

String idk=null;



Statement st= c.createStatement();
ResultSet rs=st.executeQuery("select *from std1 ORDER BY id DESC limit 1" );
try{
while(rs.next()){
out.println(rs.getString("id"));
    out.println("....... data value...");
//out.println(rs.getInt("id"));

idk=rs.getString("id");
}

}
catch (Exception e) {
e.printStackTrace();
}

 // out.println(".......id=..."+idk);	
 //st.executeUpdate("DELETE FROM std1 WHERE NAME=(Null)" );



//    //////////////////////////////////////////////////////////////end find id of std1...     
            

PreparedStatement ps1=c.prepareStatement("insert into quali(qualification,year,percentage,stdid) values(?,?,?,?)");
ps1.setString(1,request.getParameter("t4"));
ps1.setString(2,request.getParameter("t5"));
ps1.setString(3,request.getParameter("t6"));
//ps.setString(4,request.getParameter("t6"));
ps1.setString(4,(idk));
int i1=ps1.executeUpdate();
   if(i1>=0)
   out.println("Store successfully.......");
   else
   out.println("data NOT Store successfully.......");
            
response.sendRedirect("backlast.html");
%>
        
 
    </body>
</html>
