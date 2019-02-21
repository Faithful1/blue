
<div class="content why-china-fourth">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-sm-12">
				<!-- <h4>$Title</h4> -->
			</div>
		</div>
		<div class="row justify-content-center align-items-center">
			<div class="col-sm-12 col-md-6 text">
				<p>
					<strong>Order now . Delivery nationwide</strong>
				</p>
				<p>$Content</p>
			</div>
			
			<% if $Brochure %>
			<div class="col-sm-6 graph hidden-sm">
				<p><strong>Our Vision :</strong></p>
				<p>To become a home grown global brand in the food, energy, nutrition, and health industry helping people live better, richer and longer</p>
				<% with $Brochure %>
					<a href="$URL" class="btn btn-warning btn-block">
						<i class="fa fa-download">
						</i> Download Company Certificate [$Extension]
					</a>
				<% end_with %>
			</div>
			<% end_if %>
			<div class="m-2"></div>
		</div>
	</div>
</div>