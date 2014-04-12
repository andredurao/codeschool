module Previewable
	def thumbnail(attachment)
		file_name = File.basename(attachment.path)
		"/thumbs/#{file_name}"
	end
end


class ImagesController < ApplicationController
	include Previewable
	def show
		@image = Image.find(params[:id])
		@thumbnail = thumbnail(@image)
	end
end


class VideosController < ApplicationController
	include Previewable
	def show
		@video = Video.find(params[:id])
		@thumbnail = thumbnail(@video)
	end
end