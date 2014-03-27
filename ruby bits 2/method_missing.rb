class Tweet
	def method_missing(method_name, *args)
		puts "You tried to call #{method_name} with these arguments #{args}"
	end
end

Tweet.new.submit(1, "Here is a tweet")