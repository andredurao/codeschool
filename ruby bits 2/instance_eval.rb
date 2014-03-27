class Tweet
	attr_accessor :user, :status
end

tweet2 = Tweet.new
tweet2.status = 'twee twee 2'
puts tweet2.status

tweet = Tweet.new
tweet.instance_eval do
	self.status = "Changing the tweet's status"
end

puts tweet.status

tweet3 = Tweet.new
tweet3.status = 'tweet 3'
puts tweet3.status
