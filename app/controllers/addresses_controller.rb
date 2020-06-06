class AddressesController < ApplicationController
  before_action :set_place
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = @place.addresses
  end

  def create
    @address = @place.addresses.new(address_params)
    if @address.save
      redirect_to trip_place_path(@place, @address)
    else
      render :new
    end
  end

  def update
    if @address.update(address_params)
      redirect_to [@topic, @address]
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to topic_addresses_path
  end

  def show
  end

  def new
    @address = @place.addresses.new

  end

  def edit
    render partial "form"
  end

  private

    def set_address
      @address = Address.find(params[:id])
    end

    def set_place
      @place = Place.find(params[:place_id])
    end

    def address_params
      params.require(:address).permit(:street, :city, :state, :zip)
    end
  
end
