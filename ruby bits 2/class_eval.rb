class Tweet
	attr_accessor :status, :created_at

	def initialize(status)
		@status = status
		@created_at = Time.now
	end
end

Tweet.class_eval do
	attr_accessor :user
end

tweet = Tweet.new("Class_eval ruby")
puts tweet.status
tweet.user = "Me"
puts tweet.user