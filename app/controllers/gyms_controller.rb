class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def new
    @gym = Gym.new
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def create
    @gym = Gym.new(gym_params)
 
    @gym.save
    redirect_to @gym
  end

  def update
    @gym = Gym.find(params[:id])

    if @gym.update(gym_params)
      redirect_to @gym
    else
      render 'edit'
    end
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :latitude, :longitude)
  end
end
