
# Class
class Post < ActiveRecord::Base
	def self.by_author(author)
		if author.present?
			where(author: author)
		else
			all
		end
	end
end

# Scope
# Scopes always return a chainable object
class Post < ActiveRecord::Base
	score :by_author, -> (author) { where(author: author) if author.present? }
	scope :recent, -> { where('published_on > ?', 2.days.ago) }
end
