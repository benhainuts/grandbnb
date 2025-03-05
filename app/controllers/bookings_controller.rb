class BookingsController < ApplicationController
before_action :set_senior, only: %i[create]

def create
  @booking = @senior.bookings.new(booking_params)
  @booking.user = current_user


  if @booking.save

    redirect_to dashboard_path, notice: 'Booking added successfully!'
  else
    render 'seniors/show', status: :unprocessable_entity
  end
end

private

def set_senior
  @senior = Senior.find(params[:senior_id])
end

def booking_params
  params.require(:booking).permit(:date, :datetime, :content)
end

end
