require 'net/http'
require 'json'

class SeniorsController < ApplicationController
  before_action :set_senior, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @seniors = Senior.all

    @markers = @seniors.geocoded.map do |senior|
      {
        lat: senior.latitude,
        lng: senior.longitude,
        info_window_html: render_to_string(partial: "info_window2", locals: { senior: senior }),
        marker_html: render_to_string(partial: "marker")
      }
    end

    # 1️⃣ Recherche par localisation
    if params[:location].present?
      coordinates = get_coordinates_from_mapbox(params[:location])
      if coordinates
        @seniors = @seniors.near(coordinates, 50) # Recherche dans un rayon de 50 km
      else
        flash.now[:alert] = "Localisation introuvable."
      end
    end

    # 2️⃣ Recherche par activité (peut se combiner avec la localisation)
    if params[:query].present?
      @seniors = @seniors.where("key_skill ILIKE ?", "%#{params[:query]}%")
    end

    # 3️⃣ Vérification des résultats
    if @seniors.empty?
      flash.now[:alert] = "Aucun senior ne correspond à votre recherche."
    end

    # 4️⃣ Mise à jour des marqueurs pour Mapbox
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

  private

  def get_coordinates_from_mapbox(location)
    url = URI("https://api.mapbox.com/geocoding/v5/mapbox.places/#{CGI.escape(location)}.json?access_token=#{ENV['MAPBOX_API_KEY']}")

    # ✅ Remplace `HTTParty.get(url)` par `Net::HTTP`
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    if data["features"].any?
      return data["features"].first["center"].reverse # Retourne [latitude, longitude]
    end
    nil
  end

  def set_senior
    @senior = Senior.find(params[:id])
  end

  def senior_params
    params.require(:senior).permit(:name, :age, :address, :key_skill, :city, :photo, :summary)
  end
end



















# require 'net/http'
# require 'json'

# class SeniorsController < ApplicationController
#   before_action :set_senior, only: [:show]
#   skip_before_action :authenticate_user!, only: [:index, :show]

#   def index
#     @seniors = Senior.all

#     def get_coordinates_from_mapbox(location)
#       url = URI("https://api.mapbox.com/geocoding/v5/mapbox.places/#{CGI.escape(location)}.json?access_token=#{ENV['MAPBOX_API_KEY']}")
#       response = Net::HTTP.get(url)
#       data = JSON.parse(response)

#       if data["features"].any?
#         return data["features"].first["center"].reverse
#       end
#       nil
#     end
#     # # 1️⃣ Recherche par localisation
#     # if params[:location].present?
#     #   coordinates = get_coordinates_from_mapbox(params[:location])
#     #   if coordinates
#     #     @seniors = @seniors.near(coordinates, 50) # Recherche dans un rayon de 50 km
#     #   else
#     #     flash.now[:alert] = "Localisation introuvable."
#     #   end
#     # end

#     # # 2️⃣ Recherche par activité (peut se combiner avec la localisation)
#     # if params[:query].present?
#     #   @seniors = @seniors.where("key_skill ILIKE ?", "%#{params[:query]}%")
#     # end

#     # # 3️⃣ Vérification des résultats
#     # if @seniors.empty?
#     #   flash.now[:alert] = "Aucun senior ne correspond à votre recherche."
#     # end

#     # 4️⃣ Mise à jour des marqueurs pour Mapbox
#     unless @seniors.empty?
#       @markers = @seniors.geocoded.map do |senior|
#         {
#           lat: senior.latitude,
#           lng: senior.longitude,
#           info_window_html: render_to_string(partial: "info_window2", locals: { senior: senior }),
#           marker_html: render_to_string(partial: "marker")
#         }
#       end
#     end
#   end


#   def show
#     @booking = @senior.bookings.new

#     if @senior.geocoded?
#       @markers = [
#         {
#           lat: @senior.latitude,
#           lng: @senior.longitude,
#           info_window_html: render_to_string(partial: "info_window"),
#           marker_html: render_to_string(partial: "marker")
#         }
#       ]
#     end
#   end

#   def new
#     @senior = Senior.new
#   end

#   def create
#     @senior = Senior.new(senior_params)
#     @senior.user = current_user
#     if @senior.save
#       redirect_to seniors_path
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   private

#   def get_coordinates_from_mapbox(location)
#     url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{CGI.escape(location)}.json?access_token=#{ENV['MAPBOX_API_KEY']}"
#     response = HTTParty.get(url)
#     if response.success?
#       features = response.parsed_response["features"]
#       return features.first["center"].reverse if features.any?
#     end
#     nil
#   end

#   def set_senior
#     @senior = Senior.find(params[:id])
#   end

#   def senior_params
#     params.require(:senior).permit(:name, :age, :address, :key_skill, :city, :photo, :summary)
#   end
# end
#   # def edit
#   # end

#   # def update
#   #   if @senior.update(senior_params)
#   #     redirect_to senior_path(@senior)
#   #   else
#   #     render :edit, status: :unprocessable_entity
#   #   end
#   # end

#   private

#   def set_senior
#     @senior = Senior.find(params[:id])
#   end

#   def senior_params
#     params.require(:senior).permit(:name, :age, :address, :key_skill, :city, :photo, :summary)
#   end

#   def get_coordinates_from_mapbox(location)
#     url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{CGI.escape(location)}.json?access_token=#{ENV['MAPBOX_API_KEY']}"
#     response = HTTParty.get(url)
#     if response.success?
#       features = response.parsed_response["features"]
#       return features.first["center"].reverse if features.any?
#     end
#     nil
#   end
# end
