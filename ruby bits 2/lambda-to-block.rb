tweets = ['First tweet', 'Second tweet']

tweets.each do |tweet|
	puts tweet
end


tweets = ['First tweet', 'Second tweet']
printer = lambda { |tweet| puts tweet }
tweets.each(&printer)