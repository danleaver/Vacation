


class PlacesController < ApplicationController
  before_action :set_trip
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  
  def index
    @places = @trip.places
  end

  def show
  end

  def new
    @place = @trip.places.new
    end

  def edit
    
  end


  def create
    @place = @trip.places.new(place_params)

    if @place.save
      redirect_to trip_places_path(@trip)
    else
      render :new
    end 
  end

  def update
    if @place.update(place_params)
      redirect_to [@trip, @place]
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to trip_places_path
  end


  private 
    def set_trip
      @trip = Trip.find(params[:trip_id])
    end

    def set_place
      @place = Place.find(params[:id])
    end

  
    def place_params
      params.require(:place).permit(:name, :days)
    end
end
