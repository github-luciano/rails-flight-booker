class PassengerBookingsController < ApplicationController

  def new
    @passenger_booking = PassengerBooking.new
    @flight = Flight.find_by(id: params[:flight]) #the flight params with the ID gets submitted from the flights index form. The ID that is submitted is the ID of the flight that the user has chosen with the radio button
    @seats = params[:seats].to_i
    @seats.times { @passenger_booking.bookings.build }
  end

  def create
    @flight = Flight.find_by(id: params[:flight])
    @seats = params[:seats].to_i
  end

end
