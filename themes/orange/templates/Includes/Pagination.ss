<%-- NOTE: Before including this, you will need to wrap the include in a with block  --%>

<% if $MoreThanOnePage %>
    <% if $NotFirstPage %>
      <a class="prev" href="$PrevLink">
        <svg xmlns="http://www.w3.org/2000/svg" width="11px" height="18px" viewBox="0 0 11 18" transform='rotate(180)'>
          <title>Pagination Arrow</title>
          <polygon id="Shape" points="0.205464286 15.8568261 2.151325 17.7949957 10.9552536 9.00277826 2.151325 0.204691304 0.205464286 2.14286087 7.09421429 9.00281739"></polygon>
        </svg>
      </a>
    <% else %>
      <%-- Disabled Link --%>
      <a class="disabled" disabled="disabled">
        <svg xmlns="http://www.w3.org/2000/svg" width="11px" height="18px" viewBox="0 0 11 18" transform='rotate(180)'>
          <title>Pagination Arrow</title>
          <polygon id="Shape" points="0.205464286 15.8568261 2.151325 17.7949957 10.9552536 9.00277826 2.151325 0.204691304 0.205464286 2.14286087 7.09421429 9.00281739"></polygon>
        </svg>
      </a>

    <% end_if %>
    <% loop $Pages %>
        <% if $CurrentBool %>
            <a class="current">$PageNum</a>
        <% else %>
            <% if $Link %>
              <a href="$Link">$PageNum</a>
            <% else %>
              ...
            <% end_if %>
        <% end_if %>
        <% end_loop %>
    <% if $NotLastPage %>
      <a class="next" href="$NextLink">
        <svg xmlns="http://www.w3.org/2000/svg" width="11px" height="18px" viewBox="0 0 11 18">
          <title>Pagination Arrow</title>
          <polygon id="Shape" points="0.205464286 15.8568261 2.151325 17.7949957 10.9552536 9.00277826 2.151325 0.204691304 0.205464286 2.14286087 7.09421429 9.00281739"></polygon>
        </svg>
      </a>
    <% else %>
      <%-- Disabled Link --%>
      <svg xmlns="http://www.w3.org/2000/svg" width="11px" height="18px" viewBox="0 0 11 18">
        <title>Pagination Arrow</title>
        <polygon id="Shape" points="0.205464286 15.8568261 2.151325 17.7949957 10.9552536 9.00277826 2.151325 0.204691304 0.205464286 2.14286087 7.09421429 9.00281739"></polygon>
      </svg>
    <% end_if %>

    <%-- Debugging tools around page and object numbers --%>
		<%-- <p>$TotalPages Pages</p> --%>
		<%-- <p>$TotalItems Items</p> --%>
<% end_if %>
