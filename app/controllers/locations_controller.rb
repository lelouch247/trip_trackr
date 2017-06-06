class LocationsController < ApplicationController
  require 'pry'
  before_action :set_location, only: [:show, :edit, :update, :destroy]


  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    render partial: 'form', locals: { title: 'New' }
  end

  def create
    @location = @trip.locations(location_params)

    if @location.save
      redirect_to locations_path(@trip)
    else
      # binding.pry

    end

  end

  def show
  end

  private

  def location_params
    params.require(:location).permit(:name, :belongs_to)
  end

  def set_location
    @location = Location.find(params[:trip_id])
  end

  def set_trip_id
    @trip = Trip.find(:id)
  end

end
