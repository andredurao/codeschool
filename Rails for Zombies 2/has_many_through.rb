class Tweet < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
end

class Categorization < ActiveRecord::Base
  belongs_to :tweet     # foreign key - tweet_id
  belongs_to :category  # foreign key - category_id
end

class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :tweets, through: :categorizations
end
