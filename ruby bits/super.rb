class User
	def initialize(name)
		@name = name
	end
end

class Follower < User
	def initialize(name, following)
		@following = following
		super(name)
	end

	def relationship
		"#{@name} follows #{@following}"
	end
end