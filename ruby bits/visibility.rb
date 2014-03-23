class User
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def up_vote(friend)
		bump_karma
		friend.bump_karma
	end

	# prevent method being called outside the class but at the same time allow to be called
	# at the explicit receiver which need to be an object from the same class that object belongs to
	protected  
	def bump_karma
		puts "karma up for #{@name}"
	end
end

joe = User.new('joe')
leo = User.new('leo')

joe.up_vote(leo)