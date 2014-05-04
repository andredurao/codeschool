# spec/models/zombie_spec.rb
describe Zombie do
	it_behaves_like 'the undead', Zombie.new
end

# spec/support/shared_examples_for_undead.rb
shared_examples_for 'the undead' do |undead|
	it 'does not have a pulse' do
		undead.pulse.should be_false
	end
end
