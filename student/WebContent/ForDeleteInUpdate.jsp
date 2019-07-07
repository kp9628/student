<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <style type="text/css">
    body {
  font-family: "Times New Roman", Times, serif;
  font-size:16px;
}
    </style>
    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
<%
String wt=request.getParameter("w");
String stdid=request.getParameter("stdid");
Connection con=ConnectionProvider.getConn();


out.println("id is......"+wt+"..."+stdid);
Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM quali WHERE ID="+request.getParameter("wt"));
//out.println(st.executeUpdate("DELETE FROM std WHERE sname='+id' "));




Statement st1=con.createStatement();
String q1="select * from quali where stdid='"+stdid+"' ";
ResultSet rs1=st1.executeQuery(q1);
int a=1;
%>





                 <table class="table table-bordered table-hover"> 
                 <tr style="color:#5e63b5" class="info">
            
                <th>Qualification:</th><th>Percentage:</th> <th>Passing Year:</th><th>Remarks</th><th>Action</th>
                </tr> 
                <%
                int para=0;
                %>
               <% while(rs1.next()){
            	   a=a+1;
            	   para=para+1;
                     %>  
                      <tr>
                      
                   <td><input type="hidden" name="lid" id="w<%= para %>" value="<% out.println(rs1.getString(1)); %>">
                   <input type="text" name="q" value="<% out.println(rs1.getString(2)); %>"></td>
                   <td><input type="text" name="p" value="<% out.println(rs1.getString(4)); %>"></td>
                   <td><input type="text" name="y" value="<% out.println(rs1.getString(3)); %>"></td>
                   <td><input type="text" name="r" value="<% out.println(rs1.getString(6)); %>"></td>
                   <td> <button><span onclick="sendInfoDelete(<%=para %>)" class="glyphicon glyphicon-trash" style="font-size:17px;color:#e29599"> </button>
                        </td>
                  
                   <%-- <td><%out.println(rs1.getString(3));%> </td>
                   <td><%out.println(rs1.getString(4));%> </td>
                   <td><%out.println(rs1.getString(6));%></td>
                    --%>
                
                     <% } %>             
            </tr>
                         <% if(a==1){ %>
                          <tr><td colspan="4" align="center" style="color: red"> No any Qualification..</td></tr>
                                  <%} %>
                                 
           
            </table>

</body>
</html>