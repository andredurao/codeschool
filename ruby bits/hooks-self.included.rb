module ImageUtils

	# self.included is called by Ruby when a module is included in a class
	def self.included(base)
		base.extend(ClassMethods)
	end

	def preview
	end

	def transfer(destination)
	end

	module ClassMethods
		def fetch_from_twitter(user)
		end
	end
end

class Image
	include ImageUtils
end

image = user.image
image.preview

Image.fetch_from_twitter('gregg')
