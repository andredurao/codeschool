# => app/presenters/tweets/index_presenter.rb
class Tweet::IndexPresenter
	def initialize(user)
		@user = user
	end

	def recent_tweet
		@recent_tweet ||= @user.tweets.first # => memoized
	end
end

# => app/controllers/tweets_controller.rb
def index
	@presenter = Tweets::IndexPresenter.new(current_user)
end

# => app/views/tweets/index.html.erb
<%= @presenter.recent_tweet.body %>
<%= @presenter.recent_tweet.created_at %>