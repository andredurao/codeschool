class WeaponMailer < ActionMailer::Base
  default from: "admin@rfz.com"

  def low_ammo(weapon, zombie)
    mail to: zombie.email, subject: "#{weapon.name} has low ammo"
  end 
end
