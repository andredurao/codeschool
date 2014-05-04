# spec/support/shared_examples_for_undead.rb
shared_examples_for 'the undead' do
	it 'does not have a pulse' do
		subject.pulse.should == false
	end
end

# spec/models/zombie_spec.rb
describe Zombie do
	it_behaves_like 'the undead'
end

# spec/models/vampire_spec.rb
describe Vampire do
	it_behaves_like 'the undead'
end
