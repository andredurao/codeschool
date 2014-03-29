class Tweet < ActiveRecord::Base
  has_one :location, dependent: :destroy, foreign_key: 'tweeter_id'
end

class Location < ActiveRecord::Base
  belongs_to :tweet, foreign_key: 'tweeter_id'
  
end
