words = ['Had', 'eggs', 'for', 'breakfast']
words.each { |w| puts w }

backwards_words = words.map { |w| w.reverse }

puts backwards_words