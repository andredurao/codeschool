class Timeline
	def initialize(tweets = [])
		@tweets = tweets
	end

	def tweets
		@tweets
	end

	alias_method :contents, :tweets
end
