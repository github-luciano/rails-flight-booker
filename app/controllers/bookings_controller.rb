class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find_by(id: params[:flight]) #the flight params with the ID gets submitted from the flights index form. The ID that is submitted is the ID of the flight that the user has chosen with the radio button
    @seats = params[:seats].to_i
    #@passenger_bookings = @booking.passenger_bookings.build
    #@passenger = @passenger_bookings.build_passenger

  end

  def create
    #I need to re-declare the variables here because if the first attempt to submit the form fails
    #the render :new will re-render the page. That page will the new.html.erb, but the NEW ACTION 
    #from the controller will never be called again. As a result the variables declared in the 
    #NEW action don't have any effect since they will never get called. To pass the params that were
    #sent on the first attempt to complete the form and that are then lost when the RENDER :NEW gets
    #executed, I have made some hidden field tags in the new.html.erb that will re-submit those 
    #parameters. The para
    @booking = Booking.new(booking_params)
    @flight = Flight.find_by(id: params[:flight])
    @seats = params[:seats].to_i
    if @booking.save
      #remove the passenger ids from the bookings because when the user fills everything you dont have a way to get the passenger ids before they get submitted to the database. Instead make a table that connects each passenger with the booking. The connection occurs here in the controller, after the booking (and the passengers in the nested params) is saved.
      redirect_to flights_path
    else
      #redirect_to new_booking_path(:flight => params[:flight], :seats => params[:seats].to_i )  #this is not necessary anymore since the params are submitted with a hidden field in the form (it also didnt work very well)
      flash.now[:alert] = "Something went wrong. Please be sure that informations are correct."
      render :new
      
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, :email, :billing, passenger: [ :name, :surname ])
  end

end
