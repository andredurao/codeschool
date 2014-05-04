describe Zombie do
	let(:zombie) { Zombie.new }
	before { zombie.hungry! } # hooks
	# before(:each)
	# before(:all)
	# after(:each)
	# after(:all)

	it 'is hungry' do
		zombie.should be_hungry
	end

	it 'craves brains' do
		zombie.should be_craving_brains
	end
end
