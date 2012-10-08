<%@ page
	import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes"%>
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
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="72x72"
	href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">

<g:layoutHead />
<r:layoutResources />
</head>
<!-- Google Code for Tag remarketingowy -->
<!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1012973236;
var google_conversion_label = "rUjXCPTTuQMQtP2C4wM";
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1012973236/?value=0&amp;label=rUjXCPTTuQMQtP2C4wM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="http://zmieleni.pl">Zmieleni.pl</a>
				<ul class="nav">
				
					<li><a href="http://blog.zmieleni.pl/przeczytaj">Przeczytaj koniecznie!</a></li>
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">O JOW<b class="caret"></b></a>
					<ul class="dropdown-menu">
                          <li><a href="http://blog.zmieleni.pl/dlaczego">Dlaczego zmieleni?</a></li>                        
                          <li><a href="http://blog.zmieleni.pl/JOW">Dlaczego JOW-y?</a></li>
                          <li><a href="http://blog.zmieleni.pl/Czym%20s%20JOW-y">Czym są JOW-y?</a></li>
                	   	  <li><a href="http://blog.zmieleni.pl/abc">Abc JOW</a></li>		
                    </ul>
                    </li>
					<li><a href="http://blog.zmieleni.pl/tagged/spotkanie">Spotkania</a></li>											
				<li><a href="http://blog.zmieleni.pl/tagged/media">Media</a></li>
					<li><a href="http://forum.zmieleni.pl">Forum</a></li>	
					<li><a href="http://blog.zmieleni.pl/tagged/eksperci">Eksperci</a></li>																	
					<li><a href="http://blog.zmieleni.pl/akcja">O Akcji</a></li>
					<li><a href="http://blog.zmieleni.pl/kontakt">Kontakt/Jak
							Pomóc</a></li>
					<li><a href="http://blog.zmieleni.pl/ask">Masz pytanie</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<g:layoutBody />

		<hr>


	</div>

	<footer>
		<div class="row-fluid">
			<div class="span3">	<p>&copy; Zmieleni.pl 2012</p>
			 </div>
					
					<div class="span1">
						<a href="regulamin">Regulamin</a>
					</div>
					<div class="span1">
						<a href="prywatnosc">Prywatność</a>
					</div>
					<div class="span3">
						<a href="http://freshmail.pl">Newsletter power by  <g:img dir="images" file="freshmail.png" /> </a>
					</div>					
					<span class="designed_bg span4">Opieka informatyczna <a
						title="Stermedia Systemy Informatyczne Wrocław"
						href="http://www.stermedia.pl">Stermedia Sp. z o.o.</a>.
					</span>
				</div>
		
	</footer>
	<r:script>
 var _gaq = _gaq || [];
 _gaq.push(['_setAccount', 'UA-34506377-1']);
 _gaq.push(['_setDomainName', 'zmieleni.pl']);
 _gaq.push(['_trackPageview']);

 (function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();
</r:script>
	<r:layoutResources />

</body>
</html>