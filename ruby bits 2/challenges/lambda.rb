library = Library.new(GAMES)
print_details = lambda { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
library.exec_game('Contra', print_details)
