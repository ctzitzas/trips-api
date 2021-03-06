class TripsController < ApplicationController

    before_action :set_trip, only: [:update, :destroy, :show]

  def index
    render json: Trip.all.order(id: :asc)
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def update
    if @trip.update(trip_params)
      render json: @trip, status: :ok
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy
  end

  def show
    render json: @trip, status: :ok
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :country, :length)
  end

end
