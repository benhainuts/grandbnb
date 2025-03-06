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

Senior.destroy_all
Booking.destroy_all
User.destroy_all

puts "crea users"
sami = User.create(email:"sami@test.com", password:"sami01")
juliette = User.create(email:"juliette@test.com", password:"juliette")
cedric = User.create(email:"cedric@test.com", password:"cedric")
benoit = User.create(email:"benoit@test.com", password:"benoit")
puts"users créés"


# copiedAssets = ["101038b01ecb3807eea51966c85b9972","de07c28e3f5393e99ee929e38d45049e","f389074e7b8cdb2e43ee5e5159f566f1","f725154699245e900478e3db234f47c8","7dbeaedfb8dfeb2f8a6bfa3746ebe589","9b9d4c82792bed7e38d87acc91353621","dd3fce593716010687ad2b38ea8afcd4","c4ae3decacc95b79ffab22d8e1d5cf92"]})
# https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_woman_aged_between_65_and_90_playing_video_games_ozlebc.jpg
puts "crea seniors"
# seniors << {name:"Simone", address:"16 villa gaudelet", city: "Paris", key_skill:"bricolage", user_id:1, age:74, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741180474/an_elderly_woman_with_her_cat_ze3hbq.jpg"}
simone = Senior.create!(name:"Simone", address:"16 villa gaudelet", city: "Paris", key_skill:"bricolage", user: sami, age:74)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741180474/an_elderly_woman_with_her_cat_ze3hbq.jpg").open
simone.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
simone.save
# seniors << {name:"Marcel", address:"1 avenue de la republique", city: "Le Kremlin bicetre", key_skill:"cuisine", user_id:1, age:84, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_male_or_female_between_65_and_90_years_old_engaging_in_a_sporting_activity_a2ciqm.jpg"}
marcel = Senior.create!(name:"Marcel", address:"1 avenue de la republique", city: "Le Kremlin bicetre", key_skill:"sport", user: sami, age:84)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_male_or_female_between_65_and_90_years_old_engaging_in_a_sporting_activity_a2ciqm.jpg").open
marcel.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marcel.save
# seniors << {name:"Jeanne", address:"1 avenue de la republique", city: "Paris", key_skill:"danse", user_id:1, age:78, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an
jeanne = Senior.create!(name:"Jeanne", address:"1 avenue de la republique", city: "Paris", key_skill:"danse", user: sami, age:78)
file = URI.parse("https://media.istockphoto.com/id/1448395809/fr/photo/une-femme-%C3%A2g%C3%A9e-dansant-avec-ses-amis-dans-une-salle-de-danse.jpg?s=1024x1024&w=is&k=20&c=cNssjIx2f2thTicTMj3YRIXyVbqOTN32c5uWTv3QmWQ=").open
jeanne.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
jeanne.save


# seniors << {name:"Roger", address:"1 avenue de la republique", city: "Marseille", key_skill:"danse", user_id:2, age:78, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171621/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_2_js1br5.jpg"}
roger = Senior.create!(name:"Roger", address:"1 avenue de la republique", city: "Marseille", key_skill:"danse", user: juliette, age:78)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171621/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_2_js1br5.jpg").open
roger.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
roger.save
# seniors << {name:"Marie", address:"1 avenue de la republique", city: "Paris", key_skill:"cuisine", user_id:2, age:82, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_aged_between_65_and_90_performing_a_karate_jump_xfotv5.jpg"}
marie = Senior.create!(name:"Marie", address:"1 avenue de la republique", city: "Paris", key_skill:"cuisine", user: juliette, age:82)
file = URI.parse("https://media.istockphoto.com/id/500674888/fr/photo/femme-%C3%A2g%C3%A9e-faire-cuire-au-four.jpg?s=1024x1024&w=is&k=20&c=LJthipiDkOitFuQ-p0z8_DZ-qipzvA9asXcyDT4rPUg=").open
marie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marie.save
# seniors << {name:"Armand", address:"11 rue Barye", city: "Paris", key_skill:"judo", user_id:2, age:70, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171605/an_elderly_person_male_or_female_between_65_and_90_years_old_engaging_in_an_activity_t2k34j.jpg"}
armand = Senior.create!(name:"Armand", address:"11 rue Barye", city: "Paris", key_skill:"judo", user: juliette, age:70)
file = URI.parse("https://media.istockphoto.com/id/485696308/fr/photo/joyeux-senior-dans-un-kimono-blanc-blanc-avec-une-ceinture.jpg?s=1024x1024&w=is&k=20&c=vVVT5DLW5LyxIKem35u57ODurEFYjfobjasCvO00hyc=").open
armand.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
armand.save
# seniors << {name:"Liliane", address:"1 avenue de la republique", city: "Saint-Ouen", key_skill:"danse", user_id:3, age:75, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_1_nolui5.jpg"}
liliane = Senior.create!(name:"Liliane", address:"1 avenue de la republique", city: "Saint-Ouen", key_skill:"danse", user: cedric, age:75)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_1_nolui5.jpg").open
liliane.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
liliane.save
# seniors << {name:"Sofia", address:"1 avenue de la republique", city: "Marseille", key_skill:"cuisine", user_id:3, age:91, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741180126/photo_dune_dame_agee_qui_lit_v3jmb3.jpg"}
sofia = Senior.create!(name:"Sofia", address:"1 avenue de la republique", city: "Marseille", key_skill:"cuisine", user: cedric, age:91)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741180126/photo_dune_dame_agee_qui_lit_v3jmb3.jpg").open
sofia.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sofia.save
# seniors << {name:"Mireille", address:"1 avenue de la republique", city: "Aubervilliers", key_skill:"street fighter", user_id:2, age:69, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741179113/development/pdqrz5x48mdrtej7rv3z7g6pwkto.jpg"}
mireille = Senior.create!(name:"Mireille", address:"1 avenue de la republique", city: "Aubervilliers", key_skill:"street fighter", user: juliette, age:69)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741179113/development/pdqrz5x48mdrtej7rv3z7g6pwkto.jpg").open
mireille.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mireille.save
# seniors << {name:"Michel", address:"1 avenue de la republique", city: "Paris", key_skill:"clubber", user_id:4, age:84, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741178467/development/8i03se587yot92q3fhvecesngzeb.jpg"}
michel = Senior.create!(name:"Michel", address:"1 avenue de la republique", city: "Paris", key_skill:"clubber", user: benoit, age:84)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741178467/development/8i03se587yot92q3fhvecesngzeb.jpg").open
michel.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
michel.save
# seniors << {name:"Pascal", address:"1 avenue de la republique", city: "Argenteuil", key_skill:"cuisine", user_id:4, age:74, photo_url:"https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_aged_between_65_and_90_performing_a_karate_jump_xfotv5.jpg"}
pascal = Senior.create!(name:"Pascal", address:"1 avenue de la republique", city: "Argenteuil", key_skill:"la bagarre", user: benoit, age:74)
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_aged_between_65_and_90_performing_a_karate_jump_xfotv5.jpg").open
pascal.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pascal.save

# def add_a_senior(senior)
#   file = URI.parse(senior[:photo_url]).open
#   s = Senior.new(name: senior[:name], address: senior[:address], city: senior[:city], key_skill: senior[:key_skill], user_id: senior[:user_id] ,age: senior[:age])
#   s.photo.attach(io: file, filename: "img.png", content_type: "image/png")
#   s.save!
# end

# seniors.each do |senior|
#   # puts senior
#   add_a_senior(senior)
# end
# puts 'seniors créés'

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
