class ItemSerializer < ActiveModel::Serializer

	attributes :id, :name, :url

	def url # custom properties
		item_url(object) # - access to URL helpers, object - object that is being serialized
	end
end
