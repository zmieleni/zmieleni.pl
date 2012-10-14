<!doctype html>
<html xmlns:fb="http://ogp.me/ns/fb#">
<head>
<meta name="layout" content="bootstrap" />
<title>Zmieleni.pl</title>
<r:require modules="bootstrap, twitter,rss"/>
<r:script>
$(document).ready(function () {
$("#triggerModal").click(function() {$('#myModal').modal('show')});
});
</r:script>
	<r:script type="text/javascript">
		$(document).ready(function () {
		$('#rssCurrent').rssfeed('http://feeds.feedburner.com/Zmielenipl/news', {
		date : false,
		header : false,
		limit :	5		
		});
		});
		$(document).ready(function () {
		$('#rssExpert').rssfeed('http://feeds.feedburner.com/Zmielenipl/eksperci',
		{
		date : false,
		header : false,
		limit :	10
		});
		});
	</r:script>
</head>
<body>

<g:render template="/main"/>	
<g:render template="/create"/>	

</body>
</html>
