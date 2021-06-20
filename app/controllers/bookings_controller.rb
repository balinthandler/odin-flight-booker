class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      UserMailer.with(booking_id: @booking.id).thank_you.deliver_now
      redirect_to booking_path(@booking)
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])

  end
end
