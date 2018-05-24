<div class="md-hero">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-10 col-sm-7 col-md-6 col-xl-5">
				<h1>About Us</h1>
				<p>We finally made an about page.</p>
			</div>
			<div class="col-8 col-sm-5 col-md-5 col-xl-3">
				<img class="img-fluid" src="$ThemeDir/images/about-hero-01.png" alt="Confused Student." />
			</div>
		</div>
	</div>
</div>

<% include GreenCTA %>

<div id="contact" class="content">
	<div class="container">
		<div class="row section justify-content-center">
			<div class="col-12">
				<p class="title">Contact Rally</p>
			</div>

			<div class="col-sm-12 col-md-5 col-lg-4 col-xl-3 contactinfo">
				<p><strong>Rally Students Sdn. Bhd.</strong></p>
				<p>Kuala Lumpur, Malaysia.</p>
				<p><a href="mailto:hello@rallystudents.com" title="email Rally">hello@rallystudents.com</a></p>
				<p>+60 173 059 731</p>
				<div class="social">
					<a class="instagram" href="http://www.instagram.com/rallystudents" title="Follow us on Instagram">
						<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
							<title>Instagram</title>
							<path d="M20.9,0c-5.7,0-6.4,0-8.7.1a15.81,15.81,0,0,0-5.1,1A10.33,10.33,0,0,0,3.5,3.5,11.39,11.39,0,0,0,1,7.3a15.81,15.81,0,0,0-1,5.1c-.1,2.2-.1,3-.1,8.7s0,6.4.1,8.7a15.81,15.81,0,0,0,1,5.1,9.85,9.85,0,0,0,2.4,3.7A9.43,9.43,0,0,0,7.1,41a15.81,15.81,0,0,0,5.1,1c2.2.1,3,.1,8.7.1s6.4,0,8.7-.1a15.81,15.81,0,0,0,5.1-1,9.85,9.85,0,0,0,3.7-2.4,9.43,9.43,0,0,0,2.4-3.7,15.81,15.81,0,0,0,1-5.1c.1-2.2.1-3,.1-8.7s0-6.4-.1-8.7a15.81,15.81,0,0,0-1-5.1,9.85,9.85,0,0,0-2.4-3.7,9.43,9.43,0,0,0-3.7-2.4,15.81,15.81,0,0,0-5.1-1A81.93,81.93,0,0,0,20.9,0Zm0,3.8c5.6,0,6.3,0,8.5.1a11.68,11.68,0,0,1,3.9.7,5.65,5.65,0,0,1,2.4,1.6,6.74,6.74,0,0,1,1.6,2.4,11.68,11.68,0,0,1,.7,3.9c.1,2.2.1,2.9.1,8.5s0,6.3-.1,8.5a11.68,11.68,0,0,1-.7,3.9,5.65,5.65,0,0,1-1.6,2.4,6.74,6.74,0,0,1-2.4,1.6,11.68,11.68,0,0,1-3.9.7c-2.2.1-2.9.1-8.5.1s-6.3,0-8.5-.1a11.68,11.68,0,0,1-3.9-.7,5.65,5.65,0,0,1-2.4-1.6,6.74,6.74,0,0,1-1.6-2.4,11.68,11.68,0,0,1-.7-3.9c-.1-2.2-.1-2.9-.1-8.5s0-6.3.1-8.5a11.68,11.68,0,0,1,.7-3.9A5.65,5.65,0,0,1,6.1,6.2,8.21,8.21,0,0,1,8.6,4.6a11.68,11.68,0,0,1,3.9-.7c2.2-.1,2.8-.1,8.4-.1Z"/>
							<path d="M20.9,28a7,7,0,1,1,7-7A7,7,0,0,1,20.9,28Zm0-17.8A10.8,10.8,0,1,0,31.7,21,10.76,10.76,0,0,0,20.9,10.2Z"/>
							<path d="M34.5,9.3A2.5,2.5,0,1,1,32,6.8a2.54,2.54,0,0,1,2.5,2.5"/>
						</svg>
					</a>

					<a class="facebook" href="http://www.facebook.com/rallystudents" title="Follow us on Facebook">
						<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42">
							<title>Facebook</title>
							<path d="M39.68,0H2.32A2.32,2.32,0,0,0,0,2.32V39.68A2.32,2.32,0,0,0,2.32,42H22.43V25.74H17V19.4h5.47V14.72c0-5.42,3.32-8.38,8.16-8.38a47,47,0,0,1,4.89.25v5.67H32.12c-2.63,0-3.14,1.25-3.14,3.09v4h6.28l-.82,6.34H29V42h10.7A2.32,2.32,0,0,0,42,39.68V2.32A2.32,2.32,0,0,0,39.68,0"/>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-12 col-sm-8 col-md-5">
				<div class="contactform">
					$AboutForm
					<p>All fields are required.</p>
					<div class="fail"></div>
					<script>

						$( document ).ready(function() {
							var formEl = $('#about-form')
							var submitEl = $('.btn-aboutform');
							var formUrl = '/about/AboutForm';

							formEl.on('submit', function(e) {
								return false
							})

							$.validate({
								form: formEl,
								scrollToTopOnError: false,

								onSuccess : function($form) {
									submitEl.attr('disabled','disabled');

									$.post(formUrl, formEl.serialize(), 'json')
										.done(function() {
											submitEl.attr('value','Message Sent.');
											formEl.find('input, textarea').attr('disabled', 'disabled');
										})
										.fail(function() {
											submitEl.removeAttr('disabled');
											$('.fail').append('<p>Your message failed to send. please call our number or send us an email directly</p>');
									 	});
										// .always(function() {
										// Always fires on success or fail
										// }

								}
							});
						});

					</script>
				</div>
			</div>
		</div>

		<%-- <span></span>

		<div class="row section justify-content-center align-items-center">
			<div class="col-sm-12 col-lg-7 about-rally">
				<div class="about-info">
					<p class="section-title">About Rally</p>
					<p>Our team comes from four continents, with diverse education experiences and has a shared passion for technology that genuinely solves problems.</p>
					<p>Rally was born in Malaysia. It was conceived from years of conversations with students, academics and employers around the challenges of navigating a complex global education landscape.</p>
					<p>We believe that student communities and career transitions must be student led. Watch this space.</p>
				</div>
				<div class="about-team">
					<p class="section-title">Team</p>
					<ul class="hidden-xs">
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/holly-miles-86b66375" title="Holly Miles LinkedIn Profile">Holly Miles</a></strong> - CEO - <em>United States</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/mikhail-medvedev/" title="Mikhail Medvedev LinkedIn Profile">Mikhail Medvedev</a></strong> - CTO - <em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/sam-mulliss-7b4a5998/" title="Samuel Mulliss LinkedIn Profile">Samuel Mulliss</a></strong> - Comms &amp; Brand - <em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/nickguthrie/" title="Nicholas Guthrie LinkedIn Profile">Nicholas Guthrie</a></strong> - Product &amp; UI/UX Design - <em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/faithful-anere-18717354/" title="Faithful Anere LinkedIn Profile">Faithful Anere</a></strong> - Developer - <em>Nigeria</em></p></li>
					</ul>
					<ul class="hidden-sm hidden-md hidden-lg hidden-xl">
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/holly-miles-86b66375" title="Holly Miles LinkedIn Profile">Holly Miles</a></strong>, CEO<br/><em>United States</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/mikhail-medvedev/" title="Mikhail Medvedev LinkedIn Profile">Mikhail Medvedev</a></strong>, CTO<br/><em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/sam-mulliss-7b4a5998/" title="Samuel Mulliss LinkedIn Profile">Samuel Mulliss</a></strong>, Comms &amp; Brand<br/><em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/nickguthrie/" title="Nicholas Guthrie LinkedIn Profile">Nicholas Guthrie</a></strong>, Product &amp; Design<br/><em>New Zealand</em></p></li>
						<li><p class="person"><strong><a href="https://www.linkedin.com/in/faithful-anere-18717354/" title="Faithful Anere LinkedIn Profile">Faithful Anere</a></strong>, Developer<br/><em>Nigeria</em></p></li>
					</ul>
					<img class="mx-auto" src="$ThemeDir/images/about-bolt.png" alt="Rally Lightning Bolt" />
				</div>
			</div>
		</div> --%>
	</div>
</div>
