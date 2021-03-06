class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:flight]) #the flight params with the ID gets submitted from the flights index form. The ID that is submitted is the ID of the flight that the user has chosen with the radio button
    @seats = params[:seats].to_i
    @booking = Booking.new
  end

  def create
    #I need to re-declare the variables here because if the first attempt to submit the form fails
    #the render :new will re-render the page. That page will the new.html.erb, but the NEW ACTION 
    #from the controller will never be called again. As a result the variables declared in the 
    #NEW action don't have any effect since they will never get called. To pass the params that were
    #sent on the first attempt to complete the form and that are then lost when the RENDER :NEW gets
    #executed, I have made some hidden field tags in the new.html.erb that will re-submit those 
    #parameters. The para
    @flight = Flight.find_by(id: params[:flight])
    @seats = params[:seats].to_i
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to flights_path
    else
      #redirect_to new_booking_path(:flight => params[:flight], :seats => params[:seats].to_i )  #this is not necessary anymore since the params are submitted with a hidden field in the form (it also didnt work very well)
      flash.now[:alert] = "Please insert destination airport"
      render :new
      
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:primary_id, :passenger2_id, :passenger3_id, :passenger4_id, :flight_id, :email, :billing, passengers_attributes: [ :name, :surname ])
  end

end
