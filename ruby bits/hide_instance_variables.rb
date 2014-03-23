class User
	def display_name
		title = case @gender
		when :female
			married ? "Mrs." : "Miss"
		when :male
			"Mr."
		end
		[title, @first_name, @last_name].join(', ')
	end

	def tweet_header
		display_name
	end

	def profile
		display_name + @description
	end
end
