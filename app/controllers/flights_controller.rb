class FlightsController < ApplicationController

  def index
    @available_flights = Flight.where(from_airport_id: params[:from_airport_id], to_airport_id: params[:to_airport_id])
    #@flight_search = Flight.search(params[:flight])
    #@flight_options = Flight.all.map { |a| [ a.departing_airport.code, a.departing_airport.id ] }.uniq
  end

  private
  def flight_params
    params.require(:flight).permit(:from_airport_id, :to_airport_id)
  end

end
