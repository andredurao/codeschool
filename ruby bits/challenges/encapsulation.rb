class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_name)
    for game in games
      return true if game == search_name
    end
    false
  end
end


class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
 
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
  
  def ==(game)
    name == game.name && 
    system == game.system &&
    year == game.year
  end

  def to_s
    self.name
  end

  def description
    "#{self} was released in #{self.year}."
  end
end


class ArcadeGame < Game
  attr_accessor :weight
  def initialize(name, options={})
    super
    @weight = options[:weight]
  end
end


class ConsoleGame < Game
  def to_s
    "#{super} - #{self.system}"
  end
end
