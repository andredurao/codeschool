class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def list
    if block_given?
      games.each { |game| puts yield game }
    else
		games.each do |game|
          puts game.name
       	end
    end
  end
end
