class SeniorsController < ApplicationController
before_action :set_senior, only:[:show]

  def index
    @seniors = Senior.all
    # The `geocoded` scope filters only flats with coordinates

  end

  def show
    @booking = @senior.bookings.new

    if @senior.geocoded?
    @markers = [
      {
        lat: @senior.latitude,
        lng: @senior.longitude,
        info_window_html: render_to_string(partial: "info_window"),
        marker_html: render_to_string(partial: "marker")
      }
    ]
    end
  end

  def new
    @senior = Senior.new
  end

  def create
    @senior = Senior.new(senior_params)
    @senior.user = current_user
    if @senior.save
      redirect_to seniors_path
    else
      render :new, status: :unprocessable_entity
    end
  end



  # def edit
  # end

  # def update
  #   if @senior.update(senior_params)
  #     redirect_to senior_path(@senior)
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

private

  def set_senior
    @senior = Senior.find(params[:id])
  end

  def senior_params
    params.require(:senior).permit(:name, :age, :address, :key_skill, :city, :photo)
  end
end
