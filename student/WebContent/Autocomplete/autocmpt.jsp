<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import= "java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script>
$(document).ready(function() {
$('#country').focusin(function() {
$("#country").autocomplete("autoprocess.jsp");
});
});
</script>
</head>
<body>
    <br><br><center>
        <font face="verdana" size="2">
        <font size="4">Java(jsp)/jQuery Autocompleter Example</font>
        <br><br><br><br>

        Select Country   :
        <input type="text" id="country" name="country"/>

        </font>
        
       

    </body>
</html>