# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Senior.create(name:"gérard", address:"16 villa gaudelet", key_skill:"bricolage", user_id:"1")
Senior.create(name:"simone", address:"16 villa gaudelet", key_skill:"ufc", user_id:"1")
Senior.create(name:"georges", address:"16 villa gaudelet", key_skill:"laclasse", user_id:"1")


Booking.create(date: "15/06/2025", user_id: 1, senior_id: 3)
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 3)
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 2)
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 1)
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 1)
Booking.create(date: "23/07/2025", user_id: 1, senior_id: 1)
