require 'test_helper'

class ZombieTest < ActiveSuppport::TestCase

	

	test 'invalid without a name' do 
		z = Zombie.new
		assert !z.valid?, 'Name is not being validated'
	end

	test 'valid with all attributes' do
		z =Zombie.new
		z.name = 'Ash'
		z.graveyard = 'Oak Park'
		assert z.valid?, 'Zombie was not valid'
	end
end