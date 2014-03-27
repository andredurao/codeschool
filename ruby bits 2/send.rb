class Timeline
 def initialize(tweets)
 @tweets = tweets
 end
 
def contents
 	@tweets
end

private
 
def direct_messages ; end

end


tweets = ['Compiling!', 'Bundling...']
timeline = Timeline.new(tweets)


timeline.contents
timeline.send(:contents)
timeline.send("contents")
timeline.send(:direct_messages)



timeline.public_send("direct_messages")
# prevents running private or protected methods
# private method `direct_messages' called for 
# <Timeline:0x007fd273904eb0> (NoMethodError)