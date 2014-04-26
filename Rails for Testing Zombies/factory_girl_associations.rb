# /app/models/weapon.rb
class Weapon < ActiveRecord::Base
	belongs_to :zombie
	validates :zombie, presence: true
end


# /test/factories/weapon.rb
FactoryGirl.define do
	factory :weapon do
		name 'Broadsword'
		association :zombie
	end
end



# /test/factories/zombies.rb
FactoryGirl.define do
	factory :zombie do
		name 'Ash'
		graveyard 'Oak Park'
	end

	factory :armed_zombie, class: Zombie do
		sequence(:name) { |i| "ArmedAsh#{i}" }
		association :weapon
		graveyard 'Red Wood Park'
	end
end



# => BETTER
# /test/factories/zombies.rb
FactoryGirl.define do
	factory :zombie do
		sequence(:name) { |i| "Ash#{i}" }
		graveyard 'Oak Park'

		factory :armed_zombie
			association :weapon, factory: :hatchet # override the inferred factory name
		end
	end


end