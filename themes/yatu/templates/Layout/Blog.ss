<div class="blog">
	<div class="container">

		<%-- First Section - Title and Tagline --%>
		<div class="row">
			<div class="col-12">
				<%-- Title  --%>
				<h1>
					<% if $ArchiveYear %>
						<%t Blog.Archive 'Archive' %>:
						<% if $ArchiveDay %>
							$ArchiveDate.Nice
						<% else_if $ArchiveMonth %>
							$ArchiveDate.format('F, Y')
						<% else %>
							$ArchiveDate.format('Y')
						<% end_if %>
					<% else_if $CurrentTag %>
						<%t Blog.Tag 'Tag' %>: $CurrentTag.Title
					<% else_if $CurrentCategory %>
						<%t Blog.Category 'Category' %>: $CurrentCategory.Title
					<% else %>
						$Title
					<% end_if %>
				</h1>
				<%-- At some point this should be editable. --%>
				<p class="tagline">News and Views from Yatu Equity.</p>
			</div>
		</div>

		<span></span>

		<%-- Featured Article Area --%>
		<%-- 1. Check if blog pages exist and on Page 1 --%>
		<% if $PaginatedList.Exists && $PaginatedList.CurrentPage == 1 %>
			<div class="row">
				<div class="col-12">
					<%-- Inclusion of most of this piece --%>
					<% include FeaturePost %>
				</div>
			</div>
		<%-- 1. End --%>
		<% end_if %>

		<%-- This area covers both the front pages' remaining list and each subsequent page --%>
		<%-- 1. Do we have more than just the first two items, and we're on page 1 --%>
		<% if $PaginatedList.Exists && $PaginatedList.TotalItems >= 3 && $PaginatedList.CurrentPage == 1 %>
		<%-- Capture the span in the If so there isn't a double up anywhere --%>
			<span></span>
			<div class="row">
				<div class="col-12">
					<%-- 2. Loop the remaining 8 to make up 10 and skip first two --%>
					<% loop $PaginatedList.limit(8,2) %>
						<%-- Include ListedPost.ss template --%>
						<% include ListedPost %>
					<%-- 2. End --%>
					<% end_loop %>
				</div>
			</div>
		<%-- 1. End --%>
		<% end_if %>

		<%-- This deals with all the remaining pages --%>
		<%-- 1. Is the current page not the first page of results. --%>
		<% if $PaginatedList.Exists && $PaginatedList.CurrentPage >= 2 %>
			<div class="row">
				<div class="col-12">
					<%-- 2. Loop through all other pages, and blog entries - settings default is 10 per page --%>
					<% loop $PaginatedList %>
						<%-- Include ListedPost.ss template --%>
						<% include ListedPost %>
					<%-- 2. End --%>
					<% end_loop %>
				</div>
			</div>
		<%-- 1. End --%>
		<% end_if %>

		<span></span>

		<div class="row pagination">
			<div class="col-12">
				<% with $PaginatedList %>
					<% include Pagination %>
				<% end_with %>
			</div>
		</div>

	</div>
</div>
