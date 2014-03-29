class Weapon < ActiveRecord::Base
  belongs_to :zombie 

  before_save :check_ammo

  def check_ammo
    if self.ammo == 3
      WeaponMailer.low_ammo(self, zombie).deliver 
    end
  end
end
