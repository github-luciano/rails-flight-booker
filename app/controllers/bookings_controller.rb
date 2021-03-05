class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:flight]) #the flight params with the ID gets submitted from the flights index form. The ID that is submitted is the ID of the flight that the user has chosen with the radio button
    @seats = params[:seats].to_i
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to flights_path
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:primary_id, :passenger2_id, :passenger3_id, :passenger4_id, :flight_id, :email, :billing, passengers_attributes: [ :name, :surname ])
  end

end
