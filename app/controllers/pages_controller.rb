class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def dashboard
    authenticate_user!
    @seniors = current_user.seniors
    @bookings = current_user.bookings
    @bookings_to_be_confirmed = current_user.bookings.where(status: "à confirmer")
    @bookings_accepted = current_user.bookings.where(status: "Confirmé")
    @bookings_cancelled = current_user.bookings.where(status: "Annulé")
  end
end
