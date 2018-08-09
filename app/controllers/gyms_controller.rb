class GymsController < ApplicationController
  def show
    @gym = Gym.find(params[:id])
  end

  def new
  end

  def create
    @gym = Gym.new(gym_params)
 
    @gym.save
    redirect_to @gym
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :latitude, :longitude)
  end
end
