class User < ActiveRecord::Base
				before_create :set_name

				protected
				def set_name
								self.name = self.login.capitalize if name.blank?
				end
end
