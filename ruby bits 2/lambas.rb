my_proc = lambda { puts 'tweet' }
my_proc.call

# Stabby lambda
my_proc = -> {puts 'tweet' }
my_proc.call