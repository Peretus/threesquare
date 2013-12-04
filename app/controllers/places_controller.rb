class PlacesController < ApplicationController
  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save
    redirect_to root_path
  end

  def index
    @places = Place.all
  end


  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = PLace.find(params[:id])
    @place.update(place_params)
    redirect_to root_path
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to root_path
  end

  private
  def places_params
    params.require(:place).permit(:location, :url, :description)
  end
end