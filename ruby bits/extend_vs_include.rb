class Tweet 
	extend Searchable # use extend to expose methods as class methods
end

# Tweet.find_all_from('@GreggPollack')

class Image
	include ImageUtils # use include to expose methods as instance methods
end

# image = user.image
# image.preview