<html>
<head>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script>
    $( document ).ready(function() {
        alert( "document loaded" );
    });

    $( window ).load(function() {
        alert( "window loaded" );
    });
    </script>
</head>
<body>
    <iframe src="http://stackoverflow.com"></iframe>
</body>
</html>