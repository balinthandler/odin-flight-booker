class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @flight = Flight.new
    @flights = Flight.all
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @dates = Flight.all.map { |f| [f.start_datetime.strftime("%Y/%m/%d"), f.start_datetime] }
  end
end
