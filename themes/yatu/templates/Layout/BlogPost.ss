<div class="blog blog-post">
	<div class="container">
		<div class="row">
			<div class="col-12 title">
				<h1>$Title</h1>
				<% if $Summary %>
					<h3>$Summary</h3>
				<% else %>
					<h3>$Excerpt</h3>
				<% end_if %>

				<span></span>
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-sm-7 col-md-8 col-xl-9 post-info">
				<% if $Credits %>
					<% control $Credits %>
					<img src="$BlogProfileImage.setWidth(180).getAbsoluteURL" alt="Avatar of $Name.XML" />
					<div class="blog-post-meta">
						<p class="credit">$Name.XML</p>
						<p class="credit-title">$BlogProfileSummary</p>
					<% end_control %>
						<p class="date">Posted $PublishDate.Format('jS F, Y')</p>
					</div>
				<% end_if %>
			</div>

			<div class="col-12 col-sm-5 col-md-4 col-xl-3 top-share">
				<div class="sharethis-inline-share-buttons"></div>
			</div>
		</div>
	</div>

	<% if $FeaturedImage %>
		<div class="blog-hero" style="background-image:url($FeaturedImage.setWidth(1920).getAbsoluteURL);"></div>
		<%-- possible small credit could go here as per design --%>
	<% end_if %>

	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-9">
				<article class="blog-content">
					<%-- Is there a way to break this out? What do I need to be able to control here? --%>
					$Content

					<%-- <% include EntryMeta %> --%>

					<%-- This is probably the only article tag I want to have,
					but I don't know if this is correct still - should it be everything in the post?
					Probably, but have to do some research, focus on styles for now. --%>
				</article>
				<%-- $Form --%>
				<%-- $CommentsForm --%>
				<%-- <% include BlogSideBar %> --%>
				<div class="share">
					<div class="sharethis-inline-share-buttons"></div>
				</div>
			</div>
		</div>
	</div>
</div>
