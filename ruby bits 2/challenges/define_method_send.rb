class Library
  attr_accessor :games

  [:each, :map, :select].each do |method|
    define_method(method) do |&block|
      games.send(method, &block)
    end
  end
end