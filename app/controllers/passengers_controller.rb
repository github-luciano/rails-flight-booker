class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)
    if @passenger.save
      redirect_to flights_path
    end
  end

  private
  def passenger_params
    params.require(:passenger).permit(:name, :surname)
  end

end
