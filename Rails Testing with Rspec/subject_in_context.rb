context 'with a veggie preference' do
	subject { Zombie.new(vegetarian: true) }

	it 'craves vegan brains' do
		craving.should == 'vegan brains'
	end
end
