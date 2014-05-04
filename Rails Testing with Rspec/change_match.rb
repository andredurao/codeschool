describe Zombie do
	it 'changes the number of Zombies' do
		zombie = Zombie.new(name: 'Ash')
		expect { zombie.save }.to change { Zombie.count }.by(1)
	end
end
