<%-- 3. Internal Row --%>
<div class="row featured">
	<%-- 4. Loop the blog posts --%>
	<% loop $PaginatedList.limit(2) %>
		<%-- 5. Bootstrap wrapper --%>
		<div class="col-12 col-lg-6">
			<%-- 6. Logic around if first or second featured, and if or not FeaturedImage
			exists and which style to apply. --%>
			<% if $First %>
				<div class="post first"
			<% else %>
				<div class="post second"
			<% end_if %>
			<% if $FeaturedImage.Exists %>
				style="background-image:url('$FeaturedImage.setWidth(795).getAbsoluteURL');">
			<% else %>
				style="background-image:url('$ThemeDir/images/blog-placeholder.png');">
			<% end_if %>
				<%-- 7. Overlay --%>
				<div class="post-overlay">
					<%-- 8. Post Summary Wrapper --%>
					<div class="post-summary">

						<a href="$Link" class="title-link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
							<% if $MenuTitle %>$MenuTitle
							<% else %>$Title<% end_if %>
						</a>

						<% if $Summary %>
							$Summary
						<% else %>
							<p>$Excerpt</p>
						<% end_if %>

						<% if $Credits %>
							<% control $Credits %>
								<div class="post-info">
									<img src="$BlogProfileImage.setWidth(200).getAbsoluteURL" alt="Avatar of $Name.XML" />
									<div class="blog-post-meta">
										<p class="credit">$Name.XML</p>
										<p class="credit-title hidden-xs">$BlogProfileSummary</p>
							<% end_control %>
									<p class="date">Posted $PublishDate.Format('jS F, Y')</p>
								</div>
							</div>
						<% end_if %>

					<%-- 8. End --%>
					</div>
				<%-- 7. End --%>
				</div>
			<%-- 6. End --%>
			</div>
		<%-- 5. End --%>
		</div>
	<%-- 4. end --%>
	<% end_loop %>
<%-- 3. End --%>
</div>
