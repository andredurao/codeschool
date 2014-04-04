<% cache @weapon do %>
  <section>
    <h3><%= @weapon.name %></h3>
    <ul>
      <%= render @weapon.zombies %>
    </ul>
    <%= link_to 'Details', @weapon %>
  </section>
<% end %>
