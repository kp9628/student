 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="style.css" type="text/css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" >
<link href="bootstrap/css/bootstrap-grid.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css.map" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> retrieveDel.jsp</title>
</head>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "student";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from std3 where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<html>
<body> 

<div class="container-fluid">
   <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-6">
            
<table align="center" bgcolor="#FFCC99" class="table" width="40">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<caption><h1>Update data from database... </h1></caption>
<form method="post" action="update-process.jsp"  align="center" bgcolor="pink">


<tr><td>

<div class="form-group">
      <label for="disabledInput" class="col-sm-2 control-label">ID</label>
      <div class="col-sm-3">
        <input class="form-control" id="disabledInput" type="text" placeholder="<%=resultSet.getString("id") %>" disabled>
      </div>
    </div>
</td>
<tr><th>
 name:</th><td>
<input type="text" name="t1" value="<%=resultSet.getString(2) %>"></td></tr>
<br>
<tr><th>age:</th><td>
<input type="text" name="t2" value="<%=resultSet.getString(3) %>"></td></tr>
<br>

<tr><th>Email Id:</th><td>
<input type="text" name="t3" value="<%=resultSet.getString(4) %>"></td></tr>
<br><br>
<tr><td colspan="3" align="center"><input type="submit" value="submit" class="btn btn-success"></td></tr>
<input type="hidden" name="hd" value="<%=resultSet.getString("id") %>"> 
</form>
<% out.println(resultSet.getString("t3"));
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


           </div>
           <div class="col-md-3"></div>
    </div>
</body>
</html> 