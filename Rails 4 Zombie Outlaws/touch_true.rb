class Zombie < ActiveRecord::Base
  belongs_to :weapon, touch: true
end
