class Attachement
	attr_accessor :title, :size, :url

	def to_s 
		"#{@title}, #{@size}"
	end
end

class Image < Attachement
end

class Video < Attachement
	attr_accessor :duration
end