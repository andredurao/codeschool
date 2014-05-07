# => app/models/user.rb
class User < ActiveRecord::Base
  has_many :tweets
  
  def latest_location
    [latest_tweet.latitude, latest_tweet.longitude]
  end
  
  def latest_tweet
    self.tweets.last
  end
end

# => app/models/tweet.rb
class Tweet < ActiveRecord::Base
  has_one :location
  belongs_to :user
  
  delegate :latitude, :longitude, to: :location, allow_nil: true
end