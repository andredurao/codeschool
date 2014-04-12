render json: @items

render json: @items, root: false


# app/controller/items_controller.rb
render json: @items, serializer: ItemsCollectionSerializer

# app/serializers/items_collection_serializer.rb
class ItemsCollectionSerializer < ActiveModel::ArraySerializer # serializer base class for collections
	self.root = false
end