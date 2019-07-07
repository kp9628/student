<script type="text/javascript">
function valYear(t) {
var y=parseInt(t.value);
if(!((y>=1950) && (y<=2099)) ) {
alert("Please enter a valid date between 1950-2099");
t.focus();
}
}
</script>
<!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</body></html>
<INPUT type="text" name="numeric" maxlength="4"
onblur="valYear(this)" />
<input type="text">

<html><body>