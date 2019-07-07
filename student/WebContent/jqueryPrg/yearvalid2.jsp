<html>
<head>
<title>Test</title>

<script type="text/javascript">
// checks to see if the data passed in is a 4 digit year between now and 1900
function checkIsValid(_data)
{
 var _thisYear = new Date().getFullYear();
    
 if (_data.length != 4) return "This is not valid";
 if (!_data.match(/\d{4}/)) return "This is not valid";
 if (parseInt(_data) > _thisYear || parseInt(_data) < 1900)
  return "This is not valid";
 return "This is valid";
}
</script>
</head>

<body>
<form name="myForm">
<input type="text" name="theYear" maxlength="4" value="" onchange="alert(checkIsValid(this.value));"/>
<input type="button" value="Test if Valid" onblur="alert(checkIsValid(this.form.theYear.value));" />
</form>
<p>Click <a href="javascript: alert(checkIsValid(document.myForm.theYear.value)); ">here</a> to check content is valid</p>
</body>
</html>
