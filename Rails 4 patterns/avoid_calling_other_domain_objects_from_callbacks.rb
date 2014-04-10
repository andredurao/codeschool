class User < ActiveRecord::Base
				def register
								self.token = TokenGenerator.create(self)
								save
				end
end

class UsersController < ApplicationController
				def create
								@user = User.new(user_params)
								if @user.register
												redirect_to @user, notice: 'Success'
								else
												#....
								end
				end
end

