class ItemSerializer < ActiveModel::Serializer
	attributes :id, :name, :price 

	# overriding default attributes method in order to have more control
	def attributes
		data = super
		if current_user.premium_account?
			data[:discounted_price] = object.discounted_price
		end
		data
	end
end
