<%= form_for(@limb) do |f| %>
  <div class="field">
    <%= f.label :zombie %><br />
    <%= collection_radio_buttons(:limb, 
                                 :zombie_id, 
                                 @zombies, 
                                 :id, 
                                 :name) %>
  </div>
<% end %>
