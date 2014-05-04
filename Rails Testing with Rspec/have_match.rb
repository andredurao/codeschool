describe Zombie do
	it 'starts with two weapons' do
		zombie = Zombie.new(name: 'Ash')
		zombie.should have(2).weapons
		# have_at_least(2)
		# have_at_most(2)
	end
end
