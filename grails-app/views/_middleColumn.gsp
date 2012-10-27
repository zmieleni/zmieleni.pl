<%@ page import="pl.jednomandatowe.Signature"%>

<section id="main" class="span6">
	<div class="hero-unit"
		style="padding-left: 15px; padding-top: 5px; text-align: center">
		<p>
		<h3 style="padding: 0px">
			Naszą akcję poparło już <% out << Signature.count() %> osób 
		</h3>
		</p>
		<g:render template="/list"/>
	</div>
	<div ><h4 ><a style="color: #000000;" href="http://blog.zmieleni.pl/tagged/news">Aktualności:</a></h4></div>
	<div class="well">
	<div id="rssCurrent" >		</div>	
	<div style="text-align: right"> <a href="http://blog.zmieleni.pl/tagged/news"> >>pokaż więcej</a></div>	
	</div>
	<div><h4><a style="color: #000000;" href="http://http://blog.zmieleni.pl/tagged/eksperci">Artykuły ekspertów:</a></h4></div>
		<div id="rssExpert"class="well" ></div>
	<div>
		<h3 style="text-align: center">Zobacz co się stało z zebranymi
			podpisami!</h3>
	</div>
	<div>
		<object width="570" height="420">
			<param name="movie"
				value="http://www.youtube.com/v/pGWNnFnQ5AI?version=3&amp;hl=pl_PL"></param>
			<param name="allowFullScreen" value="true"></param>
			<param name="allowscriptaccess" value="always"></param>
			<embed
				src="http://www.youtube.com/v/pGWNnFnQ5AI?version=3&amp;hl=pl_PL"
				type="application/x-shockwave-flash" width="560" height="420"
				allowscriptaccess="always" allowfullscreen="true"></embed>
		</object>
	</div>
	<div>
		Niestety film został usunięty z Youtube. Można go jeszcze obejrzeć <a
			href="http://www.youtube.com/watch?v=4DLYDrf28g8&feature=plcp">tutaj.</a>
	</div>
</section>
