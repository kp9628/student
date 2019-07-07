<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


<script type="text/javascript">

$(function() {   /*  for percentage validation... */
	  $('#percentage').on('input', function() {
	    this.value = this.value
	      .replace(/[^\d.]/g, '')             // numbers and decimals only
	      .replace(/(^[\d]{2})[\d]/g, '$1')   // not more than 2 digits at the beginning
	      .replace(/(\..*)\./g, '$1')         // decimal can't exist more than once
	      .replace(/(\.[\d]{4})./g, '$1');    // not more than 4 digits after decimal
	  });
	});


$(function() {   /*  for mobile validation... */
	  $('#mobileValidation').on('input', function() {
	    this.value = this.value
        .replace(/(^[\d]{10})[\d]/g, '$1')   // not more than 2 digits at the beginning
	
	  });
	});

</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="percentage" />
<input type="text" id="mobileValidation" />
</body>
</html>