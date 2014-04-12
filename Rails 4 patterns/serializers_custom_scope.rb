class ItemSerializer < ActiveModel::Serializer
	attributes :id, :name, :price

	def attributes

		#...
		logged_user.premium_account?
		#...
	end
end


# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
	serialization_scope :logged_user
end

# same as 

render json: @items, scope: logged_user, scope_name: :logged_user