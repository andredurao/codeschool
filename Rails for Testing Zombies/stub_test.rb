test 'decapitate should set to dead again' do
	@zombie.weapons.stubs(:slice)
	@zombie.decapitate
	assert 'dead again', @zombie.status
end