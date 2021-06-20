class UserMailer < ApplicationMailer
  default from: 'booking@odin.com', reply_to: 'booking@odin.com'
  
  def thank_you
    @booking = Booking.find(params[:booking_id])
    @url = booking_url(@booking)
    mail(
      to: @booking.passengers.pluck(:email),
      subject: 'Thanks for booking your flight with us!'
    )
  end
end
