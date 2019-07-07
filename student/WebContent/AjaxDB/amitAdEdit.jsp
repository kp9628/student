<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<button onclick="addRowInMiddle(1)"> addmore</button>
<table id="lineItem">
<tr>

</tr>
</table>


<script type="text/javascript">

function addRowInMiddle(row_number) {
/* 	alert("hi..."+row_number); */
	var table = document.getElementById("lineItem");
	var row = table.insertRow(row_number);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	 var cell5 = row.insertCell(4);
	var cell6 = row.insertCell(5);
	var cell7 = row.insertCell(6);
	var cell8 = row.insertCell(7);
	var cell9 = row.insertCell(8);
	var cell10 = row.insertCell(9);
	var cell11 = row.insertCell(10);
	//var cell12 = row.insertCell(11);
	//var cell12 = row.insertCell(12);
	//var cell13 = row.insertCell(13);

	cell1.innerHTML = '<td></td>';
	cell2.innerHTML = '<td><input type="text" name="itemCode" onClick="initAutoComplete()" id="itemCode" placeholder="Item Name" class="input-small"> <input type="hidden" name="id" id="id" class="input-small"><input type="hidden" name="itemId" placeholder="itemId" id="itemId" class="input-small"></td>';
	cell3.innerHTML = '<td><input type="text" name="description" placeholder="Description" id="description"  class="input-small"></td>';
	cell4.innerHTML = '<td><input type="number" name="sizeLength" onblur="calculateArea(this)" id="sizeLength" class="input-small" placeholder="width">'+
						'<input type="number" name="sizeWidth" id="sizeWidth" onblur="calculateArea(this)" class="input-small" placeholder="hight"> '+
						'<input type="hidden" name="lineItemStatus" value="" id="lineItemStatus" /></td>';
	 cell5.innerHTML = '<td><input name="uom" type="hidden" id="uomFrom" value="0" readonly="readonly">'+
						'<input name="altUom" type="hidden" id="uomTo" value="0" readonly="readonly">'+
						'<input name="conversionFactor" type="hidden" id="conversionFactorId" value="0" readonly="readonly">'+
						'<select name="uom" id="uom" onchange="selectAnother();" class="input-small">'+
						'<option value="0">- Please Select -</option>'+
						'<c:forEach items="${uomList}" var="uomRow">'+
						'<option value="${uomRow.id }">${uomRow.name }</option>'+
						'</c:forEach>'+
						'</select>'+
						'</td>'; 
	 cell6.innerHTML = '<td>'+
						'<select name="altUom" id="altUom" onchange="getItemUnit()" class="input-small">'+
							'<option value="0">- Please Select -</option> '+
							'<c:forEach items="${uomList}" var="uomRow">'+
								'<option value="${uomRow.id }">${uomRow.name }</option>'+
							'</c:forEach>'+
						'</select>'+
						'</td>';
						
	cell7.innerHTML = '<td><input type="text" name="quantity" id="quantity" placeholder="Quantity" class="input-small" onblur="calculateArea(this)">'+
		'<input type="text" name="firstUom" id="firstUom" placeholder="First UOM" readonly="readonly" class="input-small"></td>';
	/* cell8.innerHTML = '<td><input type="text" name="firstUom" id="firstUom" placeholder="First UOM" readonly="readonly" class="input-small"></td>'; */
	cell8.innerHTML = '<td><input type="text" name="totalSqft" id="totalSqft" placeholder="Total SqFt" readonly="readonly" class="input-small"></td>';
	cell9.innerHTML = '<td><input type="number" name="rate" id="rate" value="0.0" placeholder="Rate" onblur="calculateArea(this)" class="input-small"></td>';
	cell10.innerHTML = '<td><input type="text" name="amount" id="amount" placeholder="Amount" readonly="readonly" class="input-small"></td>';
	//cell12.innerHTML = '<br>';
	cell11.innerHTML = '<td><a href="javascript:void(0)" onClick="checkLineItem()"><i class="icon-plus bigger-120"></i></a></td>';
	
	initAutoComplete();
}
</script>

</body>
</html>