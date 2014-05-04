target.should_receive(:function)
	.once
	.twice
	.exactly(3).times
	.at_least(2).times
	.at_most(3).times
	.any_number_of_times
