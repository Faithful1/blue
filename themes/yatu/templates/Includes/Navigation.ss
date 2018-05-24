<div class="row top align-items-center">
	<div class="col-5 col-sm-4 col-lg-3">
		<a href="$BaseURL" title="Rally Students"><img class="img-fluid" src="$ThemeDir/images/logo-top.png" alt="Yatu Equity" /></a>
	</div>
	<div class="col-7 col-sm-8 col-lg-9">
		<ul class="nav justify-content-end">
			<% loop $Menu(1) %>
				<li class="nav-item hidden-sm hidden-xs">
					<a class="nav-link $LinkingMode" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
				</li>
			<% end_loop %>
			<li class="nav-item hidden-sm hidden-xs">
				<a class="nav-link" href="/#contact" title="Contact Yatu">Contact</a>
			</li>
			<li class="nav-item hidden-md hidden-lg hidden-xl">
				<!-- Toggle Mobile Menu -->
				<a href="#menu" class="menu-link">
					<?xml version="1.0" encoding="UTF-8"?>
					<svg width="4px" height="20px" viewBox="0 0 4 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
						<title>Mobile Navigation</title>
						<g id="Symbols" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<g id="mobile-nav" transform="translate(-276.000000, -14.000000)" fill-rule="nonzero" fill="#FFFFFF">
								<g id="np_more_713002_000000" transform="translate(276.000000, 14.000000)">
										<path d="M4,10 C4,8.89532 3.10468,8 2,8 C0.89532,8 0,8.89532 0,10 C0,11.10468 0.89532,12 2,12 C3.10468,12 4,11.10468 4,10 Z M4,2 C4,0.89532 3.10468,0 2,0 C0.89532,0 0,0.89532 0,2 C0,3.10468 0.89532,4 2,4 C3.10468,4 4,3.10468 4,2 Z M4,18 C4,16.89532 3.10468,16 2,16 C0.89532,16 0,16.89532 0,18 C0,19.10468 0.89532,20 2,20 C3.10468,20 4,19.10468 4,18 Z" id="Shape"></path>
								</g>
							</g>
						</g>
					</svg>
				</a>
			</li>
		</ul>
		<div>
			<!-- Mobile menu items -->
			<nav id="menu" class="panel" role="navigation">
				<a href="#" class="menu-close" title="Close Navigation Menu">
					X
				</a>
				<ul>
					<% loop $Menu(1) %>
					<li>
						<a class="$LinkingMode" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
					</li>
					<% end_loop %>
					<li><span></span></li>
					<li>
						<a class="instagram" href="http://www.instagram.com/yatuequity" title="Follow us on Instagram">
							<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
								<title>Instagram</title>
								<path d="M20.9,0c-5.7,0-6.4,0-8.7.1a15.81,15.81,0,0,0-5.1,1A10.33,10.33,0,0,0,3.5,3.5,11.39,11.39,0,0,0,1,7.3a15.81,15.81,0,0,0-1,5.1c-.1,2.2-.1,3-.1,8.7s0,6.4.1,8.7a15.81,15.81,0,0,0,1,5.1,9.85,9.85,0,0,0,2.4,3.7A9.43,9.43,0,0,0,7.1,41a15.81,15.81,0,0,0,5.1,1c2.2.1,3,.1,8.7.1s6.4,0,8.7-.1a15.81,15.81,0,0,0,5.1-1,9.85,9.85,0,0,0,3.7-2.4,9.43,9.43,0,0,0,2.4-3.7,15.81,15.81,0,0,0,1-5.1c.1-2.2.1-3,.1-8.7s0-6.4-.1-8.7a15.81,15.81,0,0,0-1-5.1,9.85,9.85,0,0,0-2.4-3.7,9.43,9.43,0,0,0-3.7-2.4,15.81,15.81,0,0,0-5.1-1A81.93,81.93,0,0,0,20.9,0Zm0,3.8c5.6,0,6.3,0,8.5.1a11.68,11.68,0,0,1,3.9.7,5.65,5.65,0,0,1,2.4,1.6,6.74,6.74,0,0,1,1.6,2.4,11.68,11.68,0,0,1,.7,3.9c.1,2.2.1,2.9.1,8.5s0,6.3-.1,8.5a11.68,11.68,0,0,1-.7,3.9,5.65,5.65,0,0,1-1.6,2.4,6.74,6.74,0,0,1-2.4,1.6,11.68,11.68,0,0,1-3.9.7c-2.2.1-2.9.1-8.5.1s-6.3,0-8.5-.1a11.68,11.68,0,0,1-3.9-.7,5.65,5.65,0,0,1-2.4-1.6,6.74,6.74,0,0,1-1.6-2.4,11.68,11.68,0,0,1-.7-3.9c-.1-2.2-.1-2.9-.1-8.5s0-6.3.1-8.5a11.68,11.68,0,0,1,.7-3.9A5.65,5.65,0,0,1,6.1,6.2,8.21,8.21,0,0,1,8.6,4.6a11.68,11.68,0,0,1,3.9-.7c2.2-.1,2.8-.1,8.4-.1Z"/>
								<path d="M20.9,28a7,7,0,1,1,7-7A7,7,0,0,1,20.9,28Zm0-17.8A10.8,10.8,0,1,0,31.7,21,10.76,10.76,0,0,0,20.9,10.2Z"/>
								<path d="M34.5,9.3A2.5,2.5,0,1,1,32,6.8a2.54,2.54,0,0,1,2.5,2.5"/>
							</svg>
						</a>

						<a class="facebook" href="http://www.facebook.com/yatuequity" title="Follow us on Facebook">
						<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
							<title>Facebook</title>
							<path d="M39.68,0H2.32A2.32,2.32,0,0,0,0,2.32V39.68A2.32,02.32,0,0,0,2.32,42H22.43V25.74H17V19.4h5.47V14.72c0-5.42,3.32-8.38,8.16-8.38a47,47,0,0,1,4.89.25v5.67H32.12c-2.63,0-3.14,1.25-3.14,3.09v4h6.28l-.82,6.34H29V42h10.7A2.32,2.32,0,0,0,42,39.68V2.32A2.32,2.32,0,0,0,39.68,0"/>
						</svg>
						</a>
					</li>
					<li><span></span></li>
					<li><a class="small-link" href="/terms/" title="Terms and Conditions">Terms</a></li>
					<li><a class="small-link" href="/terms#privacy" title="Privacy">Privacy Policy</a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>
