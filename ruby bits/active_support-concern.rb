require 'active_support/concern'

module ImageUtils
	extend ActiveSupport::Concern

	# included block is executed in the context of the image class
	included do 
		clean_up
	end

	# ActiveSupport::Concen looks for a module named ClassMethods
	module ClassMethods
		def fetch_from_twitter(user)
		end

		def clean_up
		end
	end
end

class Image
	include ImageUtils
end