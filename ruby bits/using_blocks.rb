class Timeline
	def each 
		@user.friends.each do |friend|
			friend.tweets.each { |tweet| yield tweet }
		end
	end
	include Enumerable
end

timeline = Timeline.new
timeline.each { |tweet| puts tweet }
timeline.each { |tweet| tweet.cache }

timeline.sort_by { |tweet| tweet.created_at }
timeline.find_all { |tweet| tweet.status =~ /\@codeschool/ }