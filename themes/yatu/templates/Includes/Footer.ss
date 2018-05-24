<div class="footer">
	<div class="blue-bottom">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="hidden-xs hidden-sm col-md-3 col-lg-4">
					<ul>
						<% loop $Menu(1) %>
							<li><a class="$LinkingMode" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
						<% end_loop %>
					</ul>
				</div>

				<%-- @TODO make sure ids etc on all svgs are goods - consider breaking these out since they're repeating.
				Why cant these be used in a php include? should I just make them into svg files, yeah? Probably best. --%>
				<div class="hidden-xs hidden-sm col-md-3 col-lg-4 social">
					<a class="instagram" href="http://www.instagram.com/yatuequity" title="Follow us on Instagram">
						<svg id="instagram-footer" data-name="Instagram Footer" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
							<title>Instagram</title>
							<path d="M20.9,0c-5.7,0-6.4,0-8.7.1a15.81,15.81,0,0,0-5.1,1A10.33,10.33,0,0,0,3.5,3.5,11.39,11.39,0,0,0,1,7.3a15.81,15.81,0,0,0-1,5.1c-.1,2.2-.1,3-.1,8.7s0,6.4.1,8.7a15.81,15.81,0,0,0,1,5.1,9.85,9.85,0,0,0,2.4,3.7A9.43,9.43,0,0,0,7.1,41a15.81,15.81,0,0,0,5.1,1c2.2.1,3,.1,8.7.1s6.4,0,8.7-.1a15.81,15.81,0,0,0,5.1-1,9.85,9.85,0,0,0,3.7-2.4,9.43,9.43,0,0,0,2.4-3.7,15.81,15.81,0,0,0,1-5.1c.1-2.2.1-3,.1-8.7s0-6.4-.1-8.7a15.81,15.81,0,0,0-1-5.1,9.85,9.85,0,0,0-2.4-3.7,9.43,9.43,0,0,0-3.7-2.4,15.81,15.81,0,0,0-5.1-1A81.93,81.93,0,0,0,20.9,0Zm0,3.8c5.6,0,6.3,0,8.5.1a11.68,11.68,0,0,1,3.9.7,5.65,5.65,0,0,1,2.4,1.6,6.74,6.74,0,0,1,1.6,2.4,11.68,11.68,0,0,1,.7,3.9c.1,2.2.1,2.9.1,8.5s0,6.3-.1,8.5a11.68,11.68,0,0,1-.7,3.9,5.65,5.65,0,0,1-1.6,2.4,6.74,6.74,0,0,1-2.4,1.6,11.68,11.68,0,0,1-3.9.7c-2.2.1-2.9.1-8.5.1s-6.3,0-8.5-.1a11.68,11.68,0,0,1-3.9-.7,5.65,5.65,0,0,1-2.4-1.6,6.74,6.74,0,0,1-1.6-2.4,11.68,11.68,0,0,1-.7-3.9c-.1-2.2-.1-2.9-.1-8.5s0-6.3.1-8.5a11.68,11.68,0,0,1,.7-3.9A5.65,5.65,0,0,1,6.1,6.2,8.21,8.21,0,0,1,8.6,4.6a11.68,11.68,0,0,1,3.9-.7c2.2-.1,2.8-.1,8.4-.1Z"/>
							<path d="M20.9,28a7,7,0,1,1,7-7A7,7,0,0,1,20.9,28Zm0-17.8A10.8,10.8,0,1,0,31.7,21,10.76,10.76,0,0,0,20.9,10.2Z"/>
							<path d="M34.5,9.3A2.5,2.5,0,1,1,32,6.8a2.54,2.54,0,0,1,2.5,2.5"/>
						</svg>
					</a>

					<a class="facebook" href="http://www.facebook.com/yatuequity" title="Follow us on Facebook">
						<svg id="facebook-footer" data-name="Facebook Footer" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
							<title>Facebook</title>
							<path d="M39.68,0H2.32A2.32,2.32,0,0,0,0,2.32V39.68A2.32,2.32,0,0,0,2.32,42H22.43V25.74H17V19.4h5.47V14.72c0-5.42,3.32-8.38,8.16-8.38a47,47,0,0,1,4.89.25v5.67H32.12c-2.63,0-3.14,1.25-3.14,3.09v4h6.28l-.82,6.34H29V42h10.7A2.32,2.32,0,0,0,42,39.68V2.32A2.32,2.32,0,0,0,39.68,0"/>
						</svg>
					</a>
				</div>
			</div>

			<div class="row justify-content-center align-items-center hidden-md hidden-lg hidden-xl">
				<div class="col-12 social mobile">
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
							<path d="M39.68,0H2.32A2.32,2.32,0,0,0,0,2.32V39.68A2.32,2.32,0,0,0,2.32,42H22.43V25.74H17V19.4h5.47V14.72c0-5.42,3.32-8.38,8.16-8.38a47,47,0,0,1,4.89.25v5.67H32.12c-2.63,0-3.14,1.25-3.14,3.09v4h6.28l-.82,6.34H29V42h10.7A2.32,2.32,0,0,0,42,39.68V2.32A2.32,2.32,0,0,0,39.68,0"/>
						</svg>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="copyright">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-4 col-sm-3 col-md-2">
					<img src="$ThemeDir/images/logo-bottom.png" class="img-fluid" alt="Rally Students" />
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<p>Copyright &copy; {$Now.Year} Yatu Equity.&nbsp;&nbsp;-&nbsp;&nbsp;Company No.120170000646</p>
					<p><a href="/terms/" title="Terms of Use">Terms of Use</a>&nbsp;&nbsp;-&nbsp;&nbsp;<a href="/terms/#privacy" title="Privacy Policy">Privacy Policy</a></p>
				</div>
			</div>
		</div>
	</div>
</div>
