<div id="contact" class="light-cta content">
	<div class="container">
		<div class="row section">
			<div class="col-12">
				<div class="row justify-content-center">
					<div class="col-12">
						<p class="title">We love working with innovative and passion driven businesses, please get in touch.</p>
					</div>
				</div>
			</div>

			<div class="col-12">
				<div class="row justify-content-center">
					<div class="col-sm-12 col-md-5 col-lg-4 col-xl-3 contactinfo">
						<p><strong>Yatu Equity</strong></p>
						<p>Lusaka, Zambia.</p>
						<p><a href="#" title="email Yatu Equity">ken.yatuequityltd@yahoo.com</a></p>
						<p><a href="#" title="email Yatu Equity">kamawekapalu@yahoo.com</a></p>

						<p>+260 978 257 519</p>
						<p>+260 975 302 814</p>
						<p>+260 953 948 292</p>
						<p>+260 950 622 769</p>
						<div class="social">
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
					<div class="col-12 col-sm-8 col-md-5">
						<div class="contactform">
							$ContactForm
							<div class="fail"></div>
							<script>

								$( document ).ready(function() {
									var formEl = $('#contact-form')
									var submitEl = $('.btn-contactform');
									var formUrl = '/contact/ContactForm';

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
													$('.fail').append('<p>Your message failed to send. please call our number or send us an email directly.</p>');
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
			</div>

		</div>


	</div>
</div>
