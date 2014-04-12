class ItemSerialzier < ActiveModel::Serializer
	attributes :id, :name

	has_many :comments

	# overridding associations in order to return recors we want (approved)
	def comments
		object.comments.approved
	end
end


# app/models/comments.rb
class Comments < ActiveRecord::Base
	belongs_to :item
	scope :approved, -> { where(approved: true) }
end