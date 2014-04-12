# Using custom serializer

# app/controllers/items_controller.rb
render json: @items, serializer: SomeOtherSerializer

# same as
# app/models/item.rb
class Item < ActiveRecord::Base
	def active_model_serializer
		SomeOtherSerializer
	end
end


# app/serializers/some_other_serializer.rb
class SomeOtherSerializer < ActiveModel::Serializer
	attributes :id, :description
	#...
end