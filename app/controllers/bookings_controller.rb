class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:flight]) #the flight params with the ID gets submitted from the flights index form. The ID that is submitted is the ID of the flight that the user has chosen with the radio button
  end

end
