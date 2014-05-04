describe Zombie do
	it 'responds to name' do
		zombie = Zombie.new
		zombie.should respond_to(:name)
	end
end

#	same as

describe Zombie do
	it 'responds to name' do
		subject.should respond_to(:name) # subject = Zombie.new (derived from `describe`)
	end
end

# same as

describe Zombie do
	it 'responds to name' do
		should respond_to(:name)
	end
end
