
# app/serializers/item_serializer.rb
class ItemSerializer < ActiveModel::Serializer
	attributes :id, :name, :url

	has_many :comments
	embed :id, include: true # associations will be included at the root level

	def url
		item_url(object)
	end
end

# app/serializers/comment_serializer.rb
class CommentSerializer < ActiveModel::Serializer
	attributes :id, :description

	# side-loading needs corresponding serializer

end