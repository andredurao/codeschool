def call_this_block
	yield 'tweet'
end

call_this_block { |arg| puts arg }

call_this_block { |a| puts a.upcase }