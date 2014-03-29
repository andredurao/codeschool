class Zombie < ActiveRecord::Base
  has_many :weapons

  def as_json(options=nil)
    super(options || {only: :name, include: {weapons: {only: [:ammo, :name]}}})
  end
end