class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @flight = Flight.new
    @flights = Flight.all
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @dates = Flight.all.map { |f| [f.departure_date, f.departure_date] }.uniq
    @passengers = [[1,1],[2,2],[3,3],[4,4]]
    if params[:flight]
      @result = Flight.where(
        start_id: params[:flight][:start_id],
        finish_id: params[:flight][:finish_id],
        departure_date: params[:flight][:departure_date]
        ).to_a
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:start_id, :finish_id, :departure_date)
  end

end
