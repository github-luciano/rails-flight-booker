class FlightsController < ApplicationController

  def index
    if params.has_key?(:from_airport_id) && params.has_key?(:to_airport_id) #this is necessary so if the params does not have any key (so the user has not given anything to search for), then the available flights will not be rendering in the index 
      if params[:from_airport_id] == "" && params[:to_airport_id] == ""
        flash.now[:alert] = "Please insert departure and destination airport"
      elsif params[:from_airport_id] == ""
        flash.now[:alert] = "Please insert departure airport"
      elsif params[:to_airport_id] == ""
        flash.now[:alert] = "Please insert destination airport"
      else
        if params[:datetime] != "" #datetime gets deleted from params if it is empty, so if the user doesnt input the date he can see all the flights to the selected airportts that will take place in the future
          @available_flights = Flight.where(flight_params)
        else
          params.delete(:datetime)
          @available_flights = Flight.where(flight_params)
        end
      end  
    #@available_flights = Flight.where(from_airport_id: params[:from_airport_id], to_airport_id: params[:to_airport_id], datetime: params[:datetime])
    #@flight_search = Flight.search(params[:flight])
    #@flight_options = Flight.all.map { |a| [ a.departing_airport.code, a.departing_airport.id ] }.uniq
  end
end

  private
  def flight_params
    params.permit(:from_airport_id, :to_airport_id, :datetime)
    
  end

end
