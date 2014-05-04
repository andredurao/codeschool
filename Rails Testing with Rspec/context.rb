describe Zombie do
	describe 'when hungry' do
		it 'craves brains'
		describe 'with a veggie preference' do
			it 'still craves brains'
			it 'prefers vegan brains'
		end
	end
end

# same as context

describe Zombie do
	context 'when hungry' do
		it 'craves brains'
		context 'with a veggie preference' do
			it 'still craves brains'
			it 'prefers vegan brains'
		end
	end
end
