# => app/models/user.rb
class User < ActiveRecord::Base
	has_one :account_setting, dependent: :destroy
	accepts_nested_attributes_for :account_setting
end

# => app/views/users/edit.html.erb
<%= form_for(@user) do |f| %>
	<%= f.fields_for :account_setting do |a| %>
# ...


# => app/controllers/users_controller.rb
class UsersController < ApplicationController
	def new
		@user = User.new(account_setting: AccountSetting.new)
	end
end
