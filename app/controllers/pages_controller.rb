class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def dashboard
    @seniors = current_user.seniors
    @bookings = current_user.bookings
  end
end
