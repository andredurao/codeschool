class Tweet
	attr_accessor :user, :status

	def initialize(&block)
		instance_eval(&block) if block_given?
	end
end

Tweet.new do
	self.status = "I was set in the initialize block"
	self.user = "Gregg"
end

