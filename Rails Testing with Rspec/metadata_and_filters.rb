describe Zombie do
	context 'when hungry' do
		it 'wants brains'
		context 'with a veggie preference', focus: true do
			it 'still craves brains'
			it 'prefers vegan brains', slow: true
		end
	end
end

# rspec --tag focus spec/lib/zombie_spec.rb

# => same as

# spec/spec_helper.rb
RSpec.configure do |config|
	config.filter_run focus: true
	config.run_all_with_everything_filtered = true
end

# skipping slow
RSpec.configure do |config|
	config.filter_run_excluding slow: true
	config.run_all_with_everything_filtered = true
end

# rspec --tag ~slow spec/.. => run all except slow
