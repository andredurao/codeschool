class Attachment
	def preview
		thumbnail
	end
end

class Audio < Attachment
	def preview
		player
	end
end