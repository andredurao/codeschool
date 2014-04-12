class Comment < ActiveRecord::Base
	belongs_to :post
	scope :approved, -> { where(approved: true) } # - Same query logic
end

class Post < ActiveRecord::Base
	has_many :comments
	score :with_approved_comments,
		-> { joins(:comments).where('comments.approved = ?', true) } # - Same query logic
end


# Merged scopes
class Post < ActiveRecord::Base
	has_many :comments
	score :with_approved_comments,
		-> { joins(:comments).merge(Comment.approved) } # - Same query logic
end


# Rails 3 
User.active.inactive
SELECT * FROM users WHERE state = 'inactive'

# Rails 4 - appends conditions
User.active.inactive
SELECT * FROM users WHERE state = 'active' AND state = 'inactive'

# Rails 4 - to use last wins merge logic
User.active.merge(User.inactive)
SELECT * FROM users WHERE state = 'inactive'
