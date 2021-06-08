class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @flight = Flight.new
    @flights = Flight.all
    @airports = Airport.all.map { |a| [a.code, a.id] }
  end
end
