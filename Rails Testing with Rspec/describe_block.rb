# => lib/zombie.rb
class Zombie
	attr_accessor :name, :brains

	def initialize
		@name = 'Ash'
		@brains = 0
	end
end

# => spec/lib/zombie_spec.rb
require 'spec_helper'

describe Zombie do
	it 'is named Ash' do
		zombie = Zombie.new
		zombie.name.should == 'Ash'
	end

	it 'has no brains' do
		zombie = Zombie.new
		zombie.brains.should < 1
	end
end


