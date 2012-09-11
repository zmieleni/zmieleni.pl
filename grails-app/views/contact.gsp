<!doctype html>
<html xmlns:fb="http://ogp.me/ns/fb#">
<head>
<meta name="layout" content="bootstrap" />
<title>Zmieleni.pl</title>
<r:require modules="bootstrap, twitter"/>
<r:script>
$("#triggerModal").click(function() {$('#myModal').modal('show')});
</r:script>
</head>
<body>
<g:render template="/contact"/>	
<g:render template="/create"/>	
</body>
</html>
