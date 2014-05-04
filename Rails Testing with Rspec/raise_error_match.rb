describe Zombie do
	it 'raises an error if saved without a name' do
		zombie = Zombie.new
		except { zombie.save! }.to raise_error(
			ActiveRecord::RecordInvalid
		)
	end
end
