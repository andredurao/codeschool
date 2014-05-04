context 'with a veggie preference' do
	let(:zombie) { Zombie,new(vegetarian: true, weapons: [axe]) }
	let(:axe) { Weapon.new(name: 'axe') }

	its(:weapons) { should include(axe) }
	subject { zombie }

	it 'can use its axe' do
		subject.swing(axe).should be_true
	end
end
