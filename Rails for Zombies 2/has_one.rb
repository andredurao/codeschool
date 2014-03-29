# Instead of storing location inside the Tweet model, 
# let's instead break it out into a separate table (as you see below). 
# In this case we want to define that a Tweet can have one Location, 
# and a Location belongs to a Tweet. Fill out the models below accordingly.

class Tweet < ActiveRecord::Base
  has_one :location

end

class Location < ActiveRecord::Base
  belongs_to :tweet
end
