<div class="green-cta">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12">

				<!-- Begin MailChimp Signup Form -->

				<div class="mailchimp" id="mc_embed_signup">
					<form action="//rallystudents.us15.list-manage.com/subscribe/post?u=d592b07be736db0947774b787&amp;id=22e8a5ce04" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<div id="mc_embed_signup_scroll">
							<label for="mce-EMAIL"><strong>What we do:</strong>Yatu Equity is a Zambian company with core business ventures in Procurement and supply, Construction and IT services</label>

							<div class="form-row justify-content-center">
								<div class="col-12 col-sm-5 col-xl-4">
									<div class="middleColumn">
										<!-- <input type="email" value="" name="EMAIL" data-validation="email" required="required" class="email mce-email-field form-control" id="mce-EMAIL" placeholder="email address" required> -->
										<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
										<div style="position: absolute; left: -5000px;" aria-hidden="true">
										<%-- <input type="submit" value="Sign Up" name="subscribe" id="mc-embedded-subscribe" class="button" /> --%>
											<%-- <input type="text" name="b_d592b07be736db0947774b787_22e8a5ce04" tabindex="-1" value="" /> --%>
										</div>
									</div>
								</div>
								<%-- <div class="col-12 col-sm-3 col-xl-2">
									<input type="submit" value="Sign Up" name="subscribe" id="mc-embedded-subscribe" class="button" />
								</div> --%>
							</div>
						</div>
					</form>
					<%-- Submits via jQuery --%>
					<script>
						$( document ).ready(function() {
							// form variables
							var greenFormEl = $('#mc-embedded-subscribe-form');
							var greenSubmitEl = $('#mc-embedded-subscribe');
							var greenSubmitUrl = '//rallystudents.us15.list-manage.com/subscribe/post-json?u=d592b07be736db0947774b787&amp;id=22e8a5ce04&c=?';

							// preventDefault
							greenFormEl.on('submit', function(e) {
								return false
							})

							// validation and actual submission
							$.validate({
								form: greenFormEl,
								scrollToTopOnError: false,

								onSuccess: function($form) {
									greenSubmitEl.attr('disabled','disabled');
									// using ajax so I can utilize jsonp
									$.ajax({
										url: greenSubmitUrl,
										data: greenFormEl.serialize(),
										dataType: 'jsonp',
									})
									.done(function() {
										greenFormEl.find('.email').attr('disabled','disabled');
										greenSubmitEl.attr('value','Thanks!');
									});
								}
							});
						});
					</script>
				</div>

			</div>
			<!--End mc_embed_signup-->
			<%-- <p><a href="/terms/" title="Terms and Conditions">Terms and conditions</a> apply.</p> --%>

		</div>
	</div>
</div>
