class Tweet < ActiveRecord::Base
  before_save :tweet_has_location
  
  def tweet_has_location
    self.show_location = true if self.location?
  end
end
