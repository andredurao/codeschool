class Library
  attr_accessor :games
  include Enumerable 
  
  def initialize(games = [])
    self.games = games
  end

  def each
    games.each { |g| yield g }
  end
end
