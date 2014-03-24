class TimeLine
	attr_accessor :tweets

	def print
		if block_given?
			tweets.each { |tweet| puts yield tweet }
		else
			puts tweets.join(', ')
		end
	end
end

timeline = TimeLine.new
timeline.tweets = ['one', 'two']

# Call print without block
timeline.print # => One, two

timeline.print { |tweet| "tweet #{tweet}" }