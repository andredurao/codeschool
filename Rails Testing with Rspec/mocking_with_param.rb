# app/models/zombie.rb
class Zombie < ActiveRecord::Base
	def geolocate
		Zoogle.graveyard_locator(self.graveyard)
	end
end

# spec/models/zombie_spec.rb
it 'callas Zoogle.graveyard_locator' do
	Zoogle.should_receive(:graveyard_locator).with(zombie.graveyard).and_return({latitude: 2, longitude: 3})
	zombie.geolocate
end

