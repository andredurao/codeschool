class WeaponsController < ApplicationController 
  def show
    @weapon = Weapon.find(params[:id])
    render json: @weapon.to_json(except: [:id, :created_at, :updated_at], include: :zombie)
  end
end