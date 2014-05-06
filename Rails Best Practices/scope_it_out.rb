# => app/controllers/tweets_controller.rb
def index 
	@tweets = current_user.tweets.recent.limit(10)
	@tweets = current_user.tweets.limit(10)

	# => 
	@trending = Topic.trending(5)
end

# => app/models/tweet.rb
class Tweet < ActiveRecord::Base
	scope :recent, order('created_at desc')
	default_scope order('created_at asc')
	# => ...
end



# => Ruby 1.9 accept default block param 
class Topic < ActiveRecord::Base
	scope :trending, lambda { |nul = nil| where('started_trending > ?', 1.day.ago).order('mentions desc').limit(num) }
end


# => unscoped: to override default scope ordering
@tweets = current_user.tweets.unscoped.order(:status).limit(10)