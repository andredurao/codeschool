describe Zombie do
	it { subject.name.should == 'Ash'
end

###

describe Zombie do 
	its(:name) { should == 'Ash' }
	its(:weapons) { should include(weapon) }
	its(:brains) { should be_nil }
	its('tweets.size') { should == 2 }
end


