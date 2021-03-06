<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><g:layoutTitle default="${meta(name: 'app.name')}" /></title>
<meta name="author" content="">
<meta name="description" content="jednomandatowe okręgi wyborcze, JOW, Kukiz, sejm, itd.">
<meta name="robots" content="index, follow, all">
<meta name="viewport" content="initial-scale = 1.0">

<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<r:require modules="scaffolding" />

<!-- Le fav and touch icons -->
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div class="container">
		<g:layoutBody/>
	</div>
<r:layoutResources/>
</body>
</html>