<div class="post-summary">
	<a href="$Link" class="title-link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $MenuTitle %>$MenuTitle
		<% else %>$Title<% end_if %>
	</a>

	<p class="post-image">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
		<% if $FeaturedImage.Exists %>
			$FeaturedImage.setWidth(795)
		<% else %>
			<img class="img-fluid" src="http://placehold.it/600x300" />
		<% end_if %>
		</a>
	</p>

	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <%-- <p>
			<a href="$Link">
				<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		</p> --%>

	<% include EntryMeta %>
</div>
