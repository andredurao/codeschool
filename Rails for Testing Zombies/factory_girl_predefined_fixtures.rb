test 'decapitate should set status to dead again' do
	zombie = FactoryGirl.build(:zombie, status: 'dead')
	zombie.decapitate
	assert_equal 'dead again', zombie.status
end