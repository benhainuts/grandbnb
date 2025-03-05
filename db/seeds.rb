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

puts "crea users"
User.create(email:"sami@test.com", password:"sami01")
User.create(email:"juliette@test.com", password:"juliette")
User.create(email:"cedric@test.com", password:"cedric")
User.create(email:"benoit@test.com", password:"benoit")
puts"users créés"


# copiedAssets = ["101038b01ecb3807eea51966c85b9972","de07c28e3f5393e99ee929e38d45049e","f389074e7b8cdb2e43ee5e5159f566f1","f725154699245e900478e3db234f47c8","7dbeaedfb8dfeb2f8a6bfa3746ebe589","9b9d4c82792bed7e38d87acc91353621","dd3fce593716010687ad2b38ea8afcd4","c4ae3decacc95b79ffab22d8e1d5cf92"]})
# https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_woman_aged_between_65_and_90_playing_video_games_ozlebc.jpg
puts "crea seniors"
seniors = []
seniors << {name:"Simone", address:"16 villa gaudelet", city: "Paris", key_skill:"bricolage", user_id:1, age:74, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741180474/an_elderly_woman_with_her_cat_ze3hbq.jpg"}
seniors << {name:"Marcel", address:"1 avenue de la republique", city: "Le Kremlin bicetre", key_skill:"cuisine", user_id:1, age:84, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_male_or_female_between_65_and_90_years_old_engaging_in_a_sporting_activity_a2ciqm.jpg"}
seniors << {name:"Roger", address:"1 avenue de la republique", city: "Marseille", key_skill:"danse", user_id:2, age:78, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171621/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_2_js1br5.jpg"}
seniors << {name:"Armand", address:"11 rue Barye", city: "Paris", key_skill:"judo", user_id:2, age:70, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171605/an_elderly_person_male_or_female_between_65_and_90_years_old_engaging_in_an_activity_t2k34j.jpg"}
seniors << {name:"Liliane", address:"1 avenue de la republique", city: "Saint-Ouen", key_skill:"danse", user_id:3, age:75, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_1_nolui5.jpg"}
seniors << {name:"Sofia", address:"1 avenue de la republique", city: "Marseille", key_skill:"cuisine", user_id:3, age:91, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741180126/photo_dune_dame_agee_qui_lit_v3jmb3.jpg"}
seniors << {name:"Mireille", address:"1 avenue de la republique", city: "Aubervilliers", key_skill:"street fighter", user_id:2, age:69, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741179113/development/pdqrz5x48mdrtej7rv3z7g6pwkto.jpg"}
seniors << {name:"Michel", address:"1 avenue de la republique", city: "Paris", key_skill:"clubber", user_id:4, age:84, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741178467/development/8i03se587yot92q3fhvecesngzeb.jpg"}
seniors << {name:"Pascal", address:"1 avenue de la republique", city: "Argenteuil", key_skill:"cuisine", user_id:4, age:74, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_aged_between_65_and_90_performing_a_karate_jump_xfotv5.jpg"}

def add_a_senior(senior)
  file = URI.parse(senior[:photo_url]).open
  s = Senior.new(name: senior[:name], address: senior[:address], city: senior[:city], key_skill: senior[:key_skill], user_id: senior[:user_id] ,age: senior[:age])
  puts s
  s.photo.attach(io: file, filename: "img.png", content_type: "image/png")
  s.save
end

seniors.each do |senior|
  # puts senior
  add_a_senior(senior)
end
puts 'seniors créés'

puts "crea bookings"
Booking.create(date: "01/06/2025", user_id: 4, senior_id: 1, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "02/06/2025", user_id: 4, senior_id: 1, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "03/06/2025", user_id: 4, senior_id: 2, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "04/06/2025", user_id: 3, senior_id: 2, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "05/06/2025", user_id: 3, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "06/07/2025", user_id: 3, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "07/06/2025", user_id: 3, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "08/06/2025", user_id: 1, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "09/06/2025", user_id: 4, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "10/06/2025", user_id: 2, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "11/07/2025", user_id: 1, senior_id: 6, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "12/06/2025", user_id: 4, senior_id: 6, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "13/06/2025", user_id: 4, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "14/06/2025", user_id: 1, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 2, senior_id: 8, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/07/2025", user_id: 2, senior_id: 8, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 9, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 2, senior_id: 9, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/07/2025", user_id: 1, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
puts "bookings créés"
