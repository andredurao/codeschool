class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def each_on_system(system)
    games.each do |g|
      yield if g.system == system
    end
  end
end
