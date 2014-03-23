class Grandparent
	def my_method
		"Grandparent: my_method called"
	end
end

class Parent < Grandparent ; end

class Child < Parent
	def my_method
		string = super
		"#{super}\nChild: my_method called"
	end
end

puts Child.new.my_method