my_proc = Proc.new { puts 'tweet' }
my_proc.call

my_proc = Proc.new do
	puts 'tweet'	
end
my_proc.call

