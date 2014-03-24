class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def list
    games.each { |g| puts g.name }
  end
end
