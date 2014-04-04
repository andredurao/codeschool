class MostWantedController < ApplicationController
  def create
    @zombie = Zombie.find_or_create_by(name: params[:name])
    redirect_to @zombie
  end
end
