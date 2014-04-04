class Deputy < ActiveRecord::Base
  def self.zombie_counterforce
    if Zombie.at_large_count.zero?
      Deputy.none
    else
      Deputy.where(status: 'available')
    end
  end
end
