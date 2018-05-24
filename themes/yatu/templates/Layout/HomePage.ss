<div class="hero">
	<div class="container">
		<% include Navigation %>
		<div class="row hero-content align-items-center justify-content-around">
			<div class="col-sm-12 col-md-7">
				<h2>Yatu Equity</h2>
				<h3>Awakening Africa Through Wealth Creation</h3>
			</div>
			<div class="hidden-xs hidden-sm col-md-3">
				<img class="img-fluid" src="$ThemeDir/images/hero-phone.png" alt="Rally App" />
			</div>
		</div>
	</div>
</div>

<% include GreenCTA %>
<% include TitleBlockSummary %>

<%-- <div class="title-block">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<p>Where students get involved.</p>
			</div>
		</div>
	</div>
</div> --%>

<!-- <div class="row section justify-content-center align-items-center">
	<div class="col-sm-10 col-md-9 col-xl-8 project">
		<p class="section-title">Our Portfolio: Happy Customers always return</p>
		<p class="emphasis">This are some of the great organisations that have enjoyed our services directly.</p>
		<p></p>
	</div>
</div> -->
<div class="content">
	<div class="container">
		<div class="row section justify-content-center align-items-center">
			<div class="col-sm-10 col-md-5 col-xl-4">
				<p class="section-title">Yatu Technology</p>

				<p>in the course of 2018, Yatu Technology was formed and since then has started reshaping the way
					websites and applications are built in Zambia</p>
				<div class="row hidden-md hidden-lg hidden-xl">
					<div class="col-12">
						<img class="img-fluid hidden-xs hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/activity-list-01.png" alt="Activity Cards" />
						<div class="img-mobile mx-auto">
							<img class="img-fluid hidden-sm hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/activity-list-02.png" alt="Activity Card" />
						</div>
					</div>
				</div>
				<p>To Kick off this campaign, Yatu Technology has lunched a Job Search Engine that simplifies the entire process
					of Job acquisition. Inspired by the long analog process of applying and landing a dream Job in Zambia</p>
					<p>Services in technology include: Developing apps, Company Websites, Dev Shop, Electronic Billboards.</p>
				<p><a href="/articles" title="read more">Read more</a></p>

				<%-- <p>Track your projects and activities in a competency based portfolio you can later share with employers.</p> --%>
				<%-- <div class="row hidden-md hidden-lg hidden-xl">
					<div class="col-12">
						<img class="img-fluid hidden-xs hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/section-01.png" alt="Examples of Topics" />
						<div class="img-mobile mx-auto">
							<img class="img-fluid hidden-sm hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/section-02.png" alt="Examples of Topics" />
						</div>
					</div>
				</div> --%>
				<%-- <p><em>Topics</em> are general spaces for everyone while <em>Groups</em> are tailored spaces created by users or organisations for students, professionals and educators.</p> --%>
			</div>
			<div class="col-sm-5 col-md-6 col-lg-5 col-xl-4 hidden-sm hidden-xs">
				<img class="img-fluid" src="$ThemeDir/images/activity-list-01.png" alt="Activity Cards" />
			</div>
		</div>

		<span></span>

		<div class="row section justify-content-center align-items-center">
			<div class="col-sm-5 col-md-6 col-xl-5 hidden-xs hidden-sm">
				<img class="img-fluid hidden-md" src="$ThemeDir/images/activity-shadowing-01.png" alt="Job Shadowing Activity" />
				<img class="img-fluid hidden-lg hidden-xl" src="$ThemeDir/images/activity-shadowing-02.png" alt="Job Shadowing Activity" />
			</div>
			<div class="col-sm-11 col-md-6 col-lg-5 col-xl-4">
				<p class="section-title">Yatu Construction</p>
				<p>It is no news that Yatu has consistently since its birth, been winning contracts from both government and private organisations because of the trust built overtime
					from successful delivery of services. Yatu has recently been awarded a construction contract fueling another fresh drive to achieving success.
					</p>
					<p><a href="/articles" title="read more">Read more</a></p>
				<div class="row no-gutters">
					<div class="col-12 col-lg-11">
						<img class="img-fluid hidden-sm hidden-xs" src="$ThemeDir/images/activity-shadowing-05.png" alt="A shadowing activity." />
						<div class="img-mobile mx-auto">
							<img class="img-fluid hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/activity-shadowing-02.png" alt="A shadowing activity." />
						</div>
					</div>
				</div>
				<%-- <p><strong>Feedback is always anonymous and easy to submit.</strong></p>
				<p class="questions">Even before we launch, we want to hear about student experiences. Help us by answering some questions about yours.</p>
				<a href="https://rallystudents.typeform.com/to/RYafjh" target="_blank" class="btn" title="Answer Some Questions">Answer Some Questions</a> --%>
			</div>
		</div>


		<span></span>

		<div class="content articles-list home-articles">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h4>Checkout Yatu Equity News</h4>
					</div>
				</div>

				<div class="row hidden-sm hidden-md">
					<% loop $LatestPosts.limit(3) %>
					<div class="col-sm-4 featured">
						<div class="post" style="background-image:url('$FeaturedImage.setWidth(795).getAbsoluteURL');">
							<%-- 7. Overlay --%>
							<div class="post-overlay">
								<%-- 8. Post Summary Wrapper --%>
								<div class="post-summary">
									<a href="$Link" class="title-link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
										<% if $MenuTitle %>
										$MenuTitle
										<% else %>
										$Title
										<% end_if %>
									</a>
									<% if $Summary %>
									<p>$Summary</p>
									<% else %>
									<p>$Excerpt</p>
									<% end_if %>

									<% if $Credits %>
									<% control $Credits %>
									<div class="post-info">
										<%-- <img src="$BlogProfileImage.setWidth(200).getAbsoluteURL" alt="Avatar of $Name.XML" /> --%>
										<div class="blog-post-meta">
											<p class="credit">$Name.XML</p>
											<p class="credit-title hidden-xs">$BlogProfileSummary</p>
											<% end_control %>
											<p class="date">Posted $PublishDate.Format('jS F, Y')</p>
										</div>
									</div>
									<% end_if %>
								</div>
							</div>
						</div>
					</div>
					<% end_loop %>
				</div>

				<div class="row hidden-xs hidden-lg hidden-xl">
					<% loop $LatestPosts.limit(2) %>
					<div class="col-sm-6 featured">
						<div class="post" style="background-image:url('$FeaturedImage.setWidth(795).getAbsoluteURL');">
							<%-- 7. Overlay --%>
							<div class="post-overlay">
								<%-- 8. Post Summary Wrapper --%>
								<div class="post-summary">
									<a href="$Link" class="title-link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
										<% if $MenuTitle %>
										$MenuTitle
										<% else %>
										$Title
										<% end_if %>
									</a>
									<% if $Summary %>
									<p>$Summary</p>
									<% else %>
									<p>$Excerpt</p>
									<% end_if %>

									<% if $Credits %>
									<% control $Credits %>
									<div class="post-info">
										<%-- <img src="$BlogProfileImage.setWidth(200).getAbsoluteURL" alt="Avatar of $Name.XML" /> --%>
										<div class="blog-post-meta">
											<p class="credit hidden-sm">$Name.XML</p>
											<p class="credit-title hidden-xs hidden-sm">$BlogProfileSummary</p>
											<% end_control %>
											<p class="date">Posted $PublishDate.Format('jS F, Y')</p>
										</div>
									</div>
									<% end_if %>
								</div>
							</div>
						</div>
					</div>
					<% end_loop %>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<a class="see-more" href="/articles/">View all News from Yatu Equity</a>
					</div>
				</div>
			</di
			v>
		</div>

		<span></span>

		<%-- <div class="row section justify-content-center align-items-center"> --%>
			<%-- <div class="col-sm-4 hidden-sm hidden-xs">
				<img src="$ThemeDir/images/illustration-01.png" class="img-fluid" alt="Student Sitting and Typing" />
			</div> --%>
			<%-- <div class="col-sm-5 col-md-7 col-lg-6 col-xl-5 hidden-sm hidden-xs">
				<img class="img-fluid" src="$ThemeDir/images/section-01.png" alt="Examples of Topics" />
			</div>

			<div class="col-sm-10 col-md-5 col-xl-4">
				<p class="section-title">For student communities and open innovation</p>
				<p>We believe students need more space to experiment with ideas and passions.</p>
				<p>Our web and mobile app <em>Rally</em> will simplify access to industry and experiential learning. Its communities will cultivate online discussion about these experiences and the shared challenges of being a student. </p> --%>
				<%-- <a href="/engage/" class="btn" title="Learn More">Learn More</a> --%>
				<%-- <div class="row hidden-md hidden-lg hidden-xl">
					<div class="col-12">
						<img class="img-fluid hidden-xs hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/section-01.png" alt="Examples of Topics" />
						<div class="img-mobile mx-auto">
							<img class="img-fluid hidden-sm hidden-md hidden-lg hidden-xl" src="$ThemeDir/images/section-02.png" alt="Examples of Topics" />
						</div>
					</div>
				</div> --%>
				<%-- <p>Check out our <a href="/about/#roadmap" title="Roadmap">roadmap</a> to see how things are going.</p> --%>
			<%-- </div> --%>
			<%-- <div class="row justify-content-center hidden-xl hidden-lg hidden-md hidden-xs">
				<div class="col-sm-4">
					<img src="$ThemeDir/images/illustration-01.png" class="img-fluid mobile-illustration" alt="Student Sitting and Typing" />
				</div>
			</div> --%>
		<%-- </div> --%>
		<div class="row section summary">
			<div class="col-12">
				<p class="summary-title">Yatu is Powered by Passion</p>
				<p class="title">We are not business as usual</p>

			</div>
		</div>

	</div>
</div>

<% include CyanCTA %>
