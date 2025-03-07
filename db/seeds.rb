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

Booking.destroy_all
Senior.destroy_all
User.destroy_all

puts "crea users"
sami = User.create(email:"sami@test.com", password:"sami1905")
juliette = User.create(email:"juliette@test.com", password:"juliette1905")
cedric = User.create(email:"cedric@test.com", password:"cedric1905")
benoit = User.create(email:"benoit@test.com", password:"benoit1905")
puts"users créés"


# copiedAssets = ["101038b01ecb3807eea51966c85b9972","de07c28e3f5393e99ee929e38d45049e","f389074e7b8cdb2e43ee5e5159f566f1","f725154699245e900478e3db234f47c8","7dbeaedfb8dfeb2f8a6bfa3746ebe589","9b9d4c82792bed7e38d87acc91353621","dd3fce593716010687ad2b38ea8afcd4","c4ae3decacc95b79ffab22d8e1d5cf92"]})
# https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_woman_aged_between_65_and_90_playing_video_games_ozlebc.jpg
puts "crea seniors"

simone = Senior.create!(name:"Simone", address:"16 villa gaudelet", city: "Paris", key_skill:"Bricolage", user: sami, age:74, summary:"Hello, je suis Simone, j'ai 74 ans et j'ai bricolé toute ma vie. Je serai heureuse de partager mes astuces avec vous. J'aime créer des objets de décoration et je suis très ouverte à découvrir de nouvelles techniques. A bientôt!")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741180474/an_elderly_woman_with_her_cat_ze3hbq.jpg").open
simone.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
simone.save

berenice = Senior.create!(name:"Bérénice", address:"1 avenue de la republique", city: "Le Kremlin bicetre", key_skill:"Photographie", user: sami, age:84, summary:"Hello je suis Bérénice, j'ai 84 ans et je suis une passionnée de photographie. J'ai pratiqué la photographie pendant de nombreuses années et j'aimerais partager ma passion avec vous. J'aime rencontrer de nouvelles personnes alors j'espère vous voir bientôt pour partager un moment de photographie ensemble.")
file = URI.parse("https://images.unsplash.com/photo-1422015347944-9dd46d16bd0b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzl8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
berenice.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
berenice.save


inaya = Senior.create!(name:"Inaya", address:"5 Boulevard Aragon", city: "Paris", key_skill:"Danse", user: sami, age:78, summary:"Hello, je suis Inaya, j'ai 78 ans et je suis une passionnée de danse. J'ai pratiqué la danse cumbia pendant de nombreuses années et j'aimerais partager ma passion avec vous. J'aime rencontrer de nouvelles personnes alors j'espère vous voir bientôt pour partager un moment de danse ensemble.")
file = URI.parse("https://media.istockphoto.com/id/1448395809/fr/photo/une-femme-%C3%A2g%C3%A9e-dansant-avec-ses-amis-dans-une-salle-de-danse.jpg?s=1024x1024&w=is&k=20&c=cNssjIx2f2thTicTMj3YRIXyVbqOTN32c5uWTv3QmWQ=").open
inaya.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inaya.save

roger = Senior.create!(name:"Roger", address:"1 avenue de la republique", city: "Marseille", key_skill:"Danse", user: juliette, age:78, summary:"Hello, je suis Roger, j'ai 78 ans et je suis un passionné de danse. J'ai pratiqué la danse de salon pendant de nombreuses années et j'aimerais partager ma passion avec vous. Je suis très sociable et j'aime rencontrer de nouvelles personnes. J'espère vous voir bientôt pour partager un moment de danse ensemble.")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171621/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_2_js1br5.jpg").open
roger.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
roger.save

marie = Senior.create!(name:"Marie", address:"9 Place de Mexico", city: "Paris", key_skill:"Cuisine", user: juliette, age:82, summary:"Hello, je suis Marie, j'ai 82 ans et je suis une passionnée de cuisine. J'ai cuisiné toute ma vie et j'aimerais partager mes recettes et astuces avec vous. J'aime cuisiner des plats traditionnels et je suis très ouverte à découvrir de nouvelles saveurs. A bientôt!")
file = URI.parse("https://media.istockphoto.com/id/500674888/fr/photo/femme-%C3%A2g%C3%A9e-faire-cuire-au-four.jpg?s=1024x1024&w=is&k=20&c=LJthipiDkOitFuQ-p0z8_DZ-qipzvA9asXcyDT4rPUg=").open
marie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marie.save

armand = Senior.create!(name:"Armand", address:"11 rue Barye", city: "Paris", key_skill:"Judo", user: juliette, age:70, summary:"Hello, ici Armand, 70 ans. J'ai pratiqué le judo pendant de nombreuses années et j'aimerais partager ma passion avec vous. Je suis très sociable et j'aime rencontrer de nouvelles personnes. N'hésitez pas à me contacter pour un cours de judo.")
file = URI.parse("https://media.istockphoto.com/id/485696308/fr/photo/joyeux-senior-dans-un-kimono-blanc-blanc-avec-une-ceinture.jpg?s=1024x1024&w=is&k=20&c=vVVT5DLW5LyxIKem35u57ODurEFYjfobjasCvO00hyc=").open
armand.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
armand.save

svetlana = Senior.create!(name:"svetlana", address:"23 Rue d'Aligre", city: "Paris", key_skill:"Langues", user: cedric, age:75, summary:"Hola! Moi c'est Svetlana, j'ai75 ans et je suis passionnée de langues. J'ai grandi en Europe de l'est et connais le serbe, l'albanais et le roumain. Je serais ravie de partager mes connaissances avec vous. Je suis très sociable et j'aime rencontrer de nouvelles personnes. N'hésitez pas à me contacter pour un cours de langue.")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/plan_buste_dune_personne_agee_homme_ou_femme_entre_65_et_90_ans_1_nolui5.jpg").open
svetlana.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
svetlana.save

sofia = Senior.create!(name:"Sofia", address:"84 Rue Monge", city: "Paris", key_skill:"Cinema", user: cedric, age:76, summary:"Hello, je suis Sofia, j'ai 76 ans et je suis une passionnée de cinéma. J'ai travaillé dans le cinéma toute ma vie et j'aimerais partager mes connaissances avec vous. J'aime les films classiques et je suis très ouverte à découvrir de nouveaux films. A bientôt!")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741180126/photo_dune_dame_agee_qui_lit_v3jmb3.jpg").open
sofia.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sofia.save

mireille = Senior.create!(name:"Mireille", address:"12 Rue de Rivoli", city: "Paris", key_skill:"Street Fighter", user: juliette, age:69, summary:"Coucou je suis Mireille, 69 ans, grande amatrice de street fighter et autres jeux vidéos violents. Je pratique la console de jeux depuis de nombreuses années donc attention à vous. Je suis très sociable et j'aime rencontrer de nouvelles personnes à détruire virtuellement. Allez salut!")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741179113/development/pdqrz5x48mdrtej7rv3z7g6pwkto.jpg").open
mireille.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
mireille.save

michel = Senior.create!(name:"Michel", address:"40 Avenue de Versailles", city: "Paris", key_skill:"Clubber", user: benoit, age:84, summary:"Hello moi c'est Michel, ancien DJ international, la musique electro c'est mon dada. J'aimerais partager ma passion avec vous. N'hésitez pas à me contacter pour une soirée clubbing ou un trip à Ibiza quand la saison est ouverte woohooooo!")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741178467/development/8i03se587yot92q3fhvecesngzeb.jpg").open
michel.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
michel.save

pascal = Senior.create!(name:"Pascal", address:"56 Rue Didot", city: "Paris", key_skill:"La bagarre", user: benoit, age:74, summary:"Salut, moi c'est Pascal, 74 ans, ancien champion de bagarre type combat de rue. J'ai pratiqué la bagarre pendant de nombreuses années et j'aimerais partager ma passion avec vous. Je suis très sociable et j'aime la bagarre dans le respect des limites bien entendu.")
file = URI.parse("https://res.cloudinary.com/dqxytjasr/image/upload/v1741171620/an_elderly_person_aged_between_65_and_90_performing_a_karate_jump_xfotv5.jpg").open
pascal.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pascal.save

marcelo = Senior.create!(name:"Marcelo", address:"28 Avenue d'Iéna", city: "Paris", key_skill:"La comédie", user: benoit, age:81, summary:"Salut, moi c'est Marcelo, 74 ans, ancien acteur de théâtre. J'ai pratiqué la comédie pendant de nombreuses années et j'aimerais partager ma passion avec vous. N'hésitez pas si vous souhaitez briller en soirée avec des blagues de qualité.")
file = URI.parse("https://images.unsplash.com/photo-1603792907191-89e55f70099a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
marcelo.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marcelo.save

huang = Senior.create!(name:"Huang", address:"88 Rue Lepic", city: "Paris", key_skill:"Le mandarin", user: juliette, age:89, summary:"你好, 我叫Huang, 74岁, 我是一名中文老师. 我教中文已经很多年了, 我很乐意和你分享我的知识. 我很喜欢结识新朋友, 希望很快见到你. Je serai ravi de vous apprendre le mandarin comme il se doit.")
file = URI.parse("https://images.unsplash.com/photo-1526795443948-005b48ce4791?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
huang.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
huang.save

igor = Senior.create!(name:"Igor", address:"19 Rue de Vaugirard", city: "Paris", key_skill:"Les échecs", user: juliette, age:81, summary:"Salut, moi c'est Igor, 81 ans, ancien champion d'échecs hongrois. Je suis toujours à la recherche de celui ou celle qui pourra me battre hehehe.")
file = URI.parse("https://images.unsplash.com/photo-1513159446162-54eb8bdaa79b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZWxkZXJseXxlbnwwfHwwfHx8MA%3D%3D").open
igor.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
igor.save

margaret = Senior.create!(name:"Margaret", address:"82 Rue de la Convention", city: "Paris", key_skill:"Parler la langue de Shakespeare", user: juliette, age:76, summary:"Hello, I'm Margaret, 76 years old, I'm a retired English teacher. I've been teaching English for many years and I would love to share my knowledge with you. N'hésitez pas à me contacter pour un cours d'anglais.")
file = URI.parse("https://images.unsplash.com/photo-1566616213894-2d4e1baee5d8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
margaret.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
margaret.save

rosalinda = Senior.create!(name:"Rosalinda", address:"20 Avenue Paul Doumer", city: "Paris", key_skill:"Faire le marché", user: juliette, age:76, summary:"Hola je suis Rosalinda, 76 ans, j'ai toujours adoré faire le marché et cuisiner des plats traditionnels de mon pays El Salvador. Je serai heureuse de partager mes recettes et astuces avec vous. Hasta luego!")
file = URI.parse("https://images.unsplash.com/photo-1521139342376-d2f8686c09b7?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
rosalinda.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
rosalinda.save

renee = Senior.create!(name:"Renée", address:"127 Rue Michel-Ange", city: "Paris", key_skill:"Prendre le train", user: juliette, age:76, summary:"Hello c'est Renée, 76 ans, j'ai toujours adoré prendre le train et voyager à travers l'Europe. Je serai heureuse de partager mes techniques de train hopping avec vous!")
file = URI.parse("https://images.unsplash.com/photo-1504255632554-dda6225e10b0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
renee.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
renee.save

nicolas = Senior.create!(name:"Nicolas", address:"63 Boulevard Richard Lenoir", city: "Paris", key_skill:"Developpement Web", user: juliette, age:76, summary:"Salut les jeunes, moi c'est Nicolas! Developpeur web depuis 47 ans, je suis toujours à la pointe de la technologie. Dans mon temps libre, j'aide les autres au Wagon, le meilleur bootcamp qu'on puisse trouver dans ce monde de brutes. N'hésitez pas à me contacter pour un cours de développement web. PS: j'aime bien les bonbons.")
file = URI.parse("https://images.unsplash.com/photo-1609131257008-a5436a6238da?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D").open
nicolas.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
nicolas.save

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
Booking.create(date: "01/06/2025", user: benoit, senior: rosalinda, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "02/06/2025", user: benoit, senior: renee, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "03/06/2025", user: benoit, senior: marie, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "04/06/2025", user_id: 3, senior_id: 2, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "05/06/2025", user_id: 3, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "06/07/2025", user_id: 3, senior_id: 3, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "07/06/2025", user_id: 3, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "08/06/2025", user_id: 1, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "09/06/2025", user: benoit, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "10/06/2025", user_id: 2, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "11/07/2025", user_id: 1, senior_id: 6, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "12/06/2025", user: benoit, senior_id: 6, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "13/06/2025", user: benoit, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "14/06/2025", user_id: 1, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 2, senior_id: 8, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/07/2025", user_id: 2, senior_id: 8, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 9, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 2, senior_id: 9, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "15/06/2025", user_id: 1, senior_id: 5, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/06/2025", user_id: 1, senior_id: 4, datetime:"2025-03-28 23:45:00 UTC")
Booking.create(date: "23/07/2025", user_id: 1, senior_id: 7, datetime:"2025-03-28 23:45:00 UTC")
puts "bookings créés"
