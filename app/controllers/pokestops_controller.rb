class PokestopsController < ApplicationController
  def index
    @pokestops = Pokestop.all
  end

  def show
    @pokestop = Pokestop.find(params[:id])
  end

  def new
    @pokestop = Pokestop.new
  end

  def edit
    @pokestop = Pokestop.find(params[:id])
  end

  def create
    @pokestop = Pokestop.new(pokestop_params)
 
    @pokestop.save
    redirect_to @pokestop
  end

  def update
    @pokestop = Pokestop.find(params[:id])

    if @pokestop.update(pokestop_params)
      redirect_to @pokestop
    else
      render 'edit'
    end
  end

  private
  def pokestop_params
    params.require(:pokestop).permit(:name, :latitude, :longitude)
  end
end
