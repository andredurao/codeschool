def call_this_block_twice
	yield
	yield
end

call_this_block_twice { puts "twice" }