module Commentable
	extend ActiveSupport::Concern

	included do
		has_many :comments, as: :commentable
	end

	def comments_by_user(id)
		comments.where(user_id: id)
	end

	# ActiveSupport::Concern automatically includes methods from the ClassMethods
	# module as class methods on the target class
	module ClassMethods
		def upvote(comment)
			#...
		end
	end


end


class Post < ActiveRecord::Base
	include Commentable
end

class Image < ActiveRecord::Base
	include Commentable
end


####
@post.comments_by_user(id)

####
@image.comments_by_user(id)