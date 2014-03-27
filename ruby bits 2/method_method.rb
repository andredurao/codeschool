class Timeline
 def initialize(tweets)
 	@tweets = tweets
 end
 
 def contents
 	@tweets
 end
 
 def show_tweet(index)
 	puts @tweets[index]
 end
end


tweets = ['Compiling!', 'Bundling...']
timeline = Timeline.new(tweets)

content_method = timeline.method(:contents)

content_method.call
show_method = timeline.method(:show_tweet)
show_method.call(0)

