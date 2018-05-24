<div class="row listed">
	<div class="col-12">
		<div class="row post">
			<%-- Image sits on the left, every post should have one, create default for if statement --%>
			<div class="post-image col-sm-5 col-md-4 col-lg-3 hidden-xs">
				<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<%-- Check if image exists - this needs a rework when we introduce the actual images. --%>
					<% if $FeaturedImage.Exists %>
						<%-- <div class="listed-img" style="background-image:url($FeaturedImage.setWidth(795).getAbsoluteURL)"></div> --%>
						<img class="img-fluid" src="$FeaturedImage.CroppedImage(1000,560).getAbsoluteURL" alt="$Title" />
					<% else %>
						<img class="img-fluid" src="$ThemeDir/images/blog-placeholder.png" alt="$Title" />
					<% end_if %>
				</a>
			</div>
			<%-- Post summary sits to the right at desktop view. --%>
			<div class="post-summary col-12 col-sm-7 col-md-8 col-lg-9">
				<a href="$Link" class="title-link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<%-- MenuTitle versus Title - not sure what the reason for having both is. --%>
					<% if $MenuTitle %>
						$MenuTitle
					<% else %>
						$Title
					<% end_if %>
				</a>
				<%-- If summary vs excerpt exists - consult actual blog post creation if this is necessary --%>
				<% if $Summary %>
					$Summary
				<% else %>
					<p>$Excerpt</p>
				<% end_if %>
				<%-- Entry Meta included - Maybe pull out? --%>
				<% include EntryMeta %>
			</div>
		</div>
	</div>
</div>
