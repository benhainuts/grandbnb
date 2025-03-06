class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def dashboard
    authenticate_user!
    @seniors = current_user.seniors
    @bookings = current_user.bookings.where("datetime > ?", Time.now)
    @bookings_to_be_confirmed = @bookings.where(status: "à confirmer")
    @bookings_accepted = @bookings.where(status: "Confirmé")
    @bookings_cancelled = @bookings.where(status: "Annulé")
  end
end
