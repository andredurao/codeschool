class UsersController < ApplicationController
  def follow
    @user = User.find(params[:id])
  
    if current_user.follow(@user)
      redirect_to root_url
    else
      redirect_to @user
    end

  end
end



class User < ActiveRecord::Base
  has_many :followings

  def follow(user)
    unless followings.where(:followed_user_id => user.id).present?
      followings.create(:followed_user => user)
    else
      false
    end
  end
end