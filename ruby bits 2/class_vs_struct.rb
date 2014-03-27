class Tweet 
	def initialize(user, status)
 		@user, @status = user, status
	end

	def initialize(user, status)
		@user, @status = user, status
 	end
end

# Struct gives same functionality 
Tweet = Struct.new(:user, :status)


tweet = Tweet.new('Gregg', 'compiling!')
tweet.user # => Gregg
tweet.status # => compiling!