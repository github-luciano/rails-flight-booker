class FlightsController < ApplicationController

  def index
    if params[:datetime] != ""
      @available_flights = Flight.where(flight_params)
    else
      params.delete(:datetime)
      @available_flights = Flight.where(flight_params)
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
