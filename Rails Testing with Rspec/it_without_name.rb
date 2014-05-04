describe Zombie do
	it 'responds to name' { should respond_to(:name) }
end

############

describe Zombie do
	it { should respond_to(:name) } # example name is created automatically
end
