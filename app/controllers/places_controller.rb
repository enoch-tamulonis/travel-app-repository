class PlacesController < ApplicationController
  before_action :set_place, only: [:edit, :update]

  def new 
    @place = Place.new
  end

  def create 
    @place = Place.create(place_params)

    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  def index 
    @places = Place.all
  end

  def edit 
    
  end

  def update
    if @place.update(place_params)
      respond_to do |format|
        format.html {}
        format.turbo_stream {}
      end
    else 
      respond_to do |format|
        format.html { render :edit }
      end
    end
  end

  private 

  def place_params 
    params.require(:place).permit([:name, :zip_code, :image])
  end

  def set_place 
    @place = Place.find(params[:id])
  end
end