<div class="post-info">
	<% if $Credits %>
			<% control $Credits %>
				<img src="$BlogProfileImage.setWidth(100).getAbsoluteURL" alt="Avatar of $Name.XML" />
				<div class="blog-post-meta">
					<p class="credit">$Name.XML</p>
			<% end_control %>
					<p class="date">Posted $PublishDate.Format('jS F, Y')</p>
				</div>
	<% end_if %>
</div>
