module ImageUtils
	def preview
	end
end

class Image
end

image = Image.new
image.extend(ImageUtils)
image.preview

# => ----------------------
image = Image.new
image.preview # NoMethodError: undefined method `preview`