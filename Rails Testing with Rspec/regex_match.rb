describe Zombie do
	it 'has a name that matches "Ash Clone"' do
		zombie = Zombie.new(name: 'Ash Clone 1')
		zombie.name.should match(/Ash Clone \d/)
	end
end
