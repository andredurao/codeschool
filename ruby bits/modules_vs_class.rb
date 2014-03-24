module Shareable
	def share_on_facebook
	end
end

module Favoritable
	def add_to_delicious
	end
end

class Post
	include Shareable
	include Favoritable
end

class Image
	include Shareable
	include Favoritable
end

class Tweet
	include Shareable
	include Favoritable
end