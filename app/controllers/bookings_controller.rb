class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
  end

  private
  def bookings_params
    params.require(:booking).permit(:flight_id, :passengers)
  end
end
