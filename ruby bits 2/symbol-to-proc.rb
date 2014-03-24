tweets.map { |tweet| tweet.user }

tweets.map(&user) # uses the symbol as the method name to be called.