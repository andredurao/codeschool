def tweet_as(user)
	# => current state of local variable is preserved when a lambda is created
	lambda { |tweet| puts "#{user}: #{tweet}" }
end

gregg_tweet = tweet_as('greggpollack')

gregg_tweet.call('Mind blowing !') # => greggpollack: Mind blowing !
gregg_tweet.call('Mind blown ?') # => greggpollack: Mind blown ?