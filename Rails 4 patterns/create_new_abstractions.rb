# app/models/user_suspension.rb

# PORO - Plain old Ruby object
# This class is only responsible for 1 thing
class UserSuspension
				def initialize(user)
								@user = user
				end

				def create
								@user.class.transaction do
												disapprove_user!
												disapprove_items!
												disapprove_reviews!
								end
				end

				private
				def disapprove_user!
				def disapprove_items!
				def disapprive_reviews!
end
