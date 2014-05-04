describe Zombie do
	it 'gains 3 IQ points by eating brains' do
		zombie = Zombie.new
		expect { zombie.eat_brains }.to change { zombie.iq }.by(3)
	end
end
