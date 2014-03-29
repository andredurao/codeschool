class TweetsController < ApplicationContorller
	before_action :get_tweet, only: [:edit, :update, :destroy]
	before_action :check_auth, only: [:edit, :update, :destroy]

	def get_tweet
		@tweet = Tweet.find(params[:id])
	end

	def check_auth
		if session[:zombie_id] != @tweet.zombie_id
			flash[:notice] = "Sorry can't edit this Tweet"
			redirect_to tweets_path
		end
	end

	def edit
		#...
	end

	def update
		#...
	end

	#....
end