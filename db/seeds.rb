# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

puts "creation des seniors"

gerard = Senior.create(name:"Gérard", address:"16 villa gaudelet", city: "paris", key_skill:"bricolage", user_id:"1", age:74, photo:"")
file = URI.parse("https://images.unsplash.com/photo-1542105907-bbbb542a5f79?q=80&w=2104&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D").open
gerard.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
gerard.save

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
