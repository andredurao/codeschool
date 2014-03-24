module Searchable
	def find_all_from(user)
	end
end

class Tweet
	extend Searchable # Expose module methods as class methods 
end

# Tweet.find_all_from('@GreggPollack')
