class PostsController < ApplicationController

	def index 
		@posts = Post.recent
	end

end


class Post < ActiveRecord::Base
	def self.recent
		where('published = ? AND published_on = ?', true, 2.days.ago)
	end
end