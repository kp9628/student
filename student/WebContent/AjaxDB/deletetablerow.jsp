<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
  // Add products to <table>
  function productsAdd() {
    // First check if a <tbody> tag exists, add one if not
    if ($("#productTable tbody").length == 0) {
      $("#productTable").append("<tbody></tbody>");
    }
      
    // Append product to the table
    $("#productTable tbody").append(
      "<tr>" +
        "<td>Extending Bootstrap with CSS,
             JavaScript and jQuery</td>" +
        "<td>6/11/2015</td>" +
        "<td>http://bit.ly/1SNzc0i</td>" +
      "</tr>"
      );
    $("#productTable tbody").append(
      "<tr>" +
        "<td>Build your own Bootstrap Business
             Application Template in MVC</td>" +
        "<td>1/29/2015</td>" +
        "<td>http://bit.ly/1I8ZqZg</td>" +
      "</tr>"
      );
  }
</script>

<!-- -------------------------------- Retrieve data from input fields..---------------------- -->
<script type="text/javascript">
function productAddToTable() {
  // First check if a <tbody> tag exists, add one if not
  if ($("#productTable tbody").length == 0) {
    $("#productTable").append("<tbody></tbody>");
  }
      
  // Append product to the table
  $("#productTable tbody").append(
      "<tr>" +
        "<td>" + $("#productname").val() + "</td>" +
        "<td>" + $("#introdate").val() + "</td>" +
        "<td>" + $("#url").val() + "</td>" +
      "</tr>"
      );
}


</script>

<!-- ------------------------------------delete dyanamically ------------------------------- -->

<script type="text/javascript">

function productAddToTable() {
	  // First check if a <tbody> tag exists, add one if not
	  if ($("#productTable tbody").length == 0) {
	    $("#productTable").append("<tbody></tbody>");
	  }
	      
	  // Append product to the table
	  $("#productTable tbody").append(
	    "<tr>" +
	      "<td>" + $("#productname").val() + "</td>" +
	      "<td>" + $("#introdate").val() + "</td>" +
	      "<td>" + $("#url").val() + "</td>" +
	      "<td>" +
	        "<button type='button' " +
	                "onclick='productDelete(this);' " +
	                "class='btn btn-default'>" +
	                "<span class='glyphicon
	                              glyphicon-remove' />" +
	        "</button>" +
	      "</td>" +
	    "</tr>"
	  );
	}


</script>


<!--    Build an Edit button in JavaScript    -->
<script type="text/javascript">
function productBuildTableRow() {
	  var ret =
	  "<tr>" +
	    "<td>" +
	      "<button type='button' " +
	              "onclick='productDisplay(this);' " +
	              "class='btn btn-default'>" +
	              "<span class='glyphicon glyphicon-edit' />" +
	      "</button>" +
	    "</td>" +
	    "<td>" + $("#productname").val() + "</td>" +
	    "<td>" + $("#introdate").val() + "</td>" +
	    "<td>" + $("#url").val() + "</td>" +
	    "<td>" +
	      "<button type='button' " +
	              "onclick='productDelete(this);' " +
	              "class='btn btn-default'>" +
	              "<span class='glyphicon glyphicon-remove' />" +
	      "</button>" +
	    "</td>" +
	  "</tr>"
	      
	  return ret;
	}
</script>
<!-- Use data- attributes to hold the primary key for each row  -->
<script type="text/javascript">
function productBuildTableRow(id) {
	  var ret =
	  "<tr>" +
	    "<td>" +
	      "<button type='button' " +
	              "onclick='productDisplay(this);' " +
	              "class='btn btn-default' " +
	              "data-id='" + id + "'>" +
	              "<span class='glyphicon glyphicon-edit' />" +
	      "</button>" +
	    "</td>" +
	    "<td>" + $("#productname").val() + "</td>" +
	    "<td>" + $("#introdate").val() + "</td>" +
	    "<td>" + $("#url").val() + "</td>" +
	    "<td>" +
	      "<button type='button' " +
	              "onclick='productDelete(this);' " +
	              "class='btn btn-default' " +
	              "data-id='" + id + "'>" +
	              "<span class='glyphicon glyphicon-remove' />" +
	      "</button>" +
	    "</td>" +
	  "</tr>"
	      
	  return ret;
	}


</script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>



<body>
<div class="container">
  <div class="row">
    <div class="col-sm-6">
      <h2>List Products</h2>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6">
      <table id="productTable"
              class="table table-bordered
                     table-condensed table-striped">
        <thead>
          <tr>
            <th>Product Name</th>
            <th>Introduction Date</th>
            <th>URL</th>
          </tr>
        </thead>
      </table>
    </div>
  </div>
</div>




</body>
</html>