# Proc
class Tweet
	def post
		if authenticate?(@user, @password)
			# submit tweet
			yield
		else
			raise 'Auth Error'
		end
	end
end

tweet = Tweet.new('Ruby Bits')
tweet.post { puts 'Sent!'}


# Lambda
class Tweet
	def post(success, error)
		if authenticate?(@user, @password)
			# submit the tweet
			success.call
		else
			error.call
		end
	end
end

tweet = Tweet.new('Ruby Bits !')
success = -> { puts 'Sent!'}
error = -> { raise 'Auth Error' }
tweet.post(success, error)