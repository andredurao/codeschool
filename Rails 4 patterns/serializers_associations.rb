class ItemSerializer < ActiveModel::ItemSerializer
	attributes :id, :name, :url

	has_many :comments # for each element we serialize comments
	has_many :pictures

	embed :ids

	def url
		item_url(object)
	end
end

# when custom serializer is not found, then Rails default will be used