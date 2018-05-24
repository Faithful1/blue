<!DOCTYPE html>
<!-- Yatu Equity Sendirian Berhad -->
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>

	<title><% if ClassName != HomePage %><% if $CustomMetaTitle %>$CustomMetaTitle<% else %>$SiteConfig.Title - $Title<% end_if %><% else %>$SiteConfig.Title - $SiteConfig.Tagline<% end_if %></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="shortcut icon" href="themes/yatu/images/favicon.ico" />
	$MetaTags(false)
	<%-- @TODO add other favicons lol. --%>

	<%-- Base Stylesheets --%>
	<link href="$ThemeDir/css/stylish-portfolio.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous" />
	<% require themedCSS('style') %>

	<%-- We can probably put a description field in the Site.Config so that it's not repeating itself here,
	should also look into translations at some point when we have to translate the website but that's
	a story for another time. Right now this is quick and dirty and works, seemingly. --%>

	<%-- Search Engine --%>
	<meta name="description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"A company based in Lusaka Zambia that provides procurement, Technology and Construction services in Zambia and Africa"<% end_if %> />
	<meta name="image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://yatuequity.com/themes/yatu/images/og.png"<% end_if %> />
	<%-- Schema.org for Google --%>
	<meta itemprop="description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"A company based in Lusaka Zambia that provides procurement, Technology and Construction services in Zambia and Africa"<% end_if %> />
	<meta itemprop="image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://yatuequity.com/themes/yatu/images/og.png"<% end_if %> />
	<%-- Twitter --%>
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content=<% if $CustomMetaTitle %>"$CustomMetaTitle"<% else %>"$SiteConfig.Title - $Title"<% end_if %> />
	<meta name="twitter:description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"A company based in Lusaka Zambia that provides procurement, Technology and Construction services in Zambia and Africa"<% end_if %> />
	<meta name="twitter:site" content="@yatuequity" />
	<meta name="twitter:creator" content="@yatuequity" />
	<meta name="twitter:image:src" content=<% if $TwitterImage %>"$TwitterImage.absoluteURL"<% else %>"http://yatuequity.com/themes/yatu/images/twitter.png"<% end_if %> />
	<%-- Open Graph general (Facebook, Pinterest & Google+) --%>
	<meta property="og:title" content=<% if $CustomMetaTitle %>"$CustomMetaTitle"<% else %>"$SiteConfig.Title - $Title"<% end_if %> />
	<meta property="og:description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"A company based in Lusaka Zambia that provides procurement, Technology and Construction services in Zambia and Africa"<% end_if %> />
	<meta property="og:image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://yatuequity.com/themes/yatu/images/og.png"<% end_if %> />
	<meta property="og:url" content="$AbsoluteLink" />
	<meta property="og:site_name" content="Yatu Equity" />
	<meta property="og:locale" content="en_US" />
	<meta property="fb:admins" content="107046289847777" />
	<meta property="fb:app_id" content="121914475187356" />
	<meta property="og:type" content="website" />
	<%-- Pinterest Confirmation --%>
	<meta name="p:domain_verify" content="e22d65bde2614595b5d744d26c03a869"/>
	<%-- jQuery --%>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<%-- <script src='https://www.google.com/recaptcha/api.js'></script> --%>
	<script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=5a0e90dd750a970012096a8f&product=inline-share-buttons"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/velocity/1.5.1/velocity.min.js" integrity="sha256-oVroCzyKzjeIgEE9r9y1pNSI1uQcJ8exwDEtPVSl0H4=" crossorigin="anonymous"></script>
</head>
<body>


<%-- @TODO Now that everythings sort of on this page barring the about page, this should be reworked --%>
<% if ClassName != HomePage && ClassName != ExpertPage && ClassName != IndustryPage  %>
	<% include Header %>
<% end_if %>

$Layout

<% if URLSegment = Security  %>
<div class="content">
	<div class="container">
		<div class="row section">
			<div class="col-12">
				$Form
			</div>
		</div>
	</div>
</div>
<% end_if %>

<% include Footer %>

<%-- Other Javascript --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<script src="$ThemeDir/javascript/bigSlide.js"></script>
<script src="$ThemeDir/javascript/yatu-front.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>

<!-- Global Site Tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-107689729-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-107689729-1');
</script>
<%-- <% if Classname = BlogPost %> --%>
	<%-- AddThis Sharing tools --%>
	<%-- <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5a091e9e6519ae90"></script>
<% end_if %> --%>
</body>
</html>
