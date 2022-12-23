class FlightsController < ApplicationController
  def index
    if search_params.empty?
      @flights = nil
    else
      @flights = Flight.where(from_airport_id: search_params[:from_airport_id], to_airport_id: search_params[:to_airport_id], departure_time: search_params[:date]).order(:departure_time).limit(10)
    end
  end

  private 

  def search_params
    params.permit(:from_airport_id, :to_airport_id, :date, :passengers, :page, :commit)
  end
end
