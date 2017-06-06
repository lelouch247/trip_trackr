class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
    render partial: 'form', locals: { title: 'New' }
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to root_path
  end

  private

  def trip_params
    params.require(:trip).permit(:title)
  end

  def set_trip
    @trip = Trip.find(params[:id])

  end
end
