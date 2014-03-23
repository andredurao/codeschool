class Name
	def initialize(first, last = nil)
		@first = first
		@last = last
	end

	def format
		[@last, @first].compact.join(', ')
	end
end

user_names = []
user_names << Name.new('Ashton', 'Kutcher')
user_names << Name.new('Wil', 'Wheaton')
user_names << Name.new('Madonna')
user_names.each { |n| puts n.format }