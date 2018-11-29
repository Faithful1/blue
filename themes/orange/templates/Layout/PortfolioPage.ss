<!-- Portfolio -->
    <section class="content-section" id="portfolio">
      <div class="container">
        <div class="content-section-heading text-center">
          <h3 class="text-secondary mb-0">Yatu is opportuned to have worked with great minds</h3>
          <h2 class="mb-5">Our clients are happy </h2>
        </div>
        <div class="row no-gutters">
          <% loop Portfolio %>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2>$Initial</h2>
                  <p class="mb-0">$CompanyName</p>
                </span>
              </span>

              <% with $CompanyImage %>
    						<img class="img-fluid" src="$URL" alt="" />
    					<% end_with %>
            </a>
          </div>
        	<% end_loop %>

        </div>
      </div>
    </section>
