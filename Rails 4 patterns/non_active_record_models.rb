class UserRegistration
  attr_reader :user

  def initialize(params)
    @user = User.new(params)
  end
  
  def create 
    user.is_approved = self.valid_background_check?
    user.save
  end

  private
  def valid_background_check?
    !!(@user.valid_ssn? || @user.valid_address?)
  end
end

########################################################################
# Controller
class UsersController < ApplicationController
  def create
    registration = UserRegistration.new(user_params)
    @user = registration.user

    if registration.create
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :ssn, :address)
  end
end
