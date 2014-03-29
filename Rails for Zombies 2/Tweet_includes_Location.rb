class TweetsController < ApplicationController 
  def index
    @tweets = Tweet.includes(:location).recent
  end
end
