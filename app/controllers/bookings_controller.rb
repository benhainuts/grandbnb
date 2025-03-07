class BookingsController < ApplicationController
before_action :set_senior, only: %i[create show edit update]
before_action :set_booking, only: %i[show edit update]


def create
  @booking = @senior.bookings.new(booking_params)
  @booking.user = current_user
  @booking.status = "à confirmer"
  if @booking.save
    redirect_to dashboard_path, notice: 'Booking added successfully!'
  else
    render 'seniors/show', status: :unprocessable_entity
  end
end

def edit

end

def update

  if @booking.update(booking_params)
    redirect_to dashboard_path, notice: 'Booking updated successfully!'
  else
    render :edit, status: :unprocessable_entity
  end
end

def show

end

private

def set_senior
  @senior = Senior.find(params[:senior_id])
end

def set_booking
  @booking = Booking.find(params[:id])
end

def booking_params
  params.require(:booking).permit(:date, :datetime, :content, :status)
end

end
