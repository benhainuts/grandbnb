# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "creation des seniors"
Senior.create(name:"Gérard", address:"16 villa gaudelet", city: "paris", key_skill:"bricolage", user_id:"1", age:74, photo:"")
Senior.create(name:"Simone", address:"16 villa gaudelet", city: "paris", key_skill:"ufc", user_id:"1", age:74, photo:"")
Senior.create(name:"Gautier", address:"16 villa gaudelet", city: "paris", key_skill:"L.O.L", user_id:"1", age:74, photo:"")
Senior.create(name:"Sylvie", address:"16 villa gaudelet", city: "paris", key_skill:"krav maga", user_id:"1", age:74, photo:"")
Senior.create(name:"Geargette", address:"16 villa gaudelet", city: "paris", key_skill:"street fighter", user_id:"1", age:74, photo:"")
Senior.create(name:"georges", address:"16 villa gaudelet", city: "paris", key_skill:"cusine", user_id:"1", age:74, photo:"")
Senior.create(name:"georges", address:"16 villa gaudelet", city: "paris", key_skill:"balades en foret", user_id:"1", age:74, photo:"")
Senior.create(name:"georges", address:"16 villa gaudelet", city: "paris", key_skill:"course a pied", user_id:"1", age:74, photo:"")
Senior.create(name:"georges", address:"16 villa gaudelet", city: "paris", key_skill:"L.O.L", user_id:"1", age:74, photo:"")
puts 'création des seniors finie'

puts "crea des rdv"
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 2, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 1, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 1, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/07/2025", user_id: 1, senior_id: 1, datetime:"2025-03-28 23:45:00 UTC")
puts "rdv créés"
