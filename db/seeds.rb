require "open-uri"

puts "Destroying db"

Booking.destroy_all
User.destroy_all
Friend.destroy_all



puts "create users and associate them with cloudinary pictures"


file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592233062/steven-aguilar-gjzLLrAn1LM-unsplash_waejxz.jpg')
user = User.new(first_name: "Juliette", last_name: "Charlot", email:"juliette.charlot@gmail.com", birth_date:Date.new(2001,2,3), password:"secret")
user.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
user.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592233061/jonas-kakaroto-KIPqvvTOC1s-unsplash_les9ho.jpg')
user1 = User.new(first_name: "Henry", last_name: "Premier", email:"henrylonely@gmail.com", birth_date:Date.new(1008,05,04), password:"secret")
user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592233060/christian-buehner-DItYlc26zVI-unsplash_crpruu.jpg')
user2 = User.new(first_name: "Lucas", last_name: "SkyWalker", email:"jedi@laforce.com", birth_date:Date.new(1993,2,3), password:"secret")
user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
user2.save!


puts "create friends"

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384284/Mathieu_ol9xei.jpg')
friend = Friend.new(first_name: "Matthieu", last_name: "Gentil", email:"matthieu@gentil.com", birth_date:Date.new(1993,7,07), address: "16 rue delord, Bordeaux", phone_number: "0798686767", description: "I'm able to make a large number of hilarious jokes on several topics, including yo mama jokes ;)", price: 5)
friend.photo.attach(io: file, filename: 'matthieu.jpg', content_type: 'image/jpg')
friend.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384286/Pauline_rjiend.jpg')
friend2 = Friend.new(first_name: "Pauline", last_name: "Rigolote", email:"pauline@laposte.com", birth_date:Date.new(1987,3,18), address: "2 rue des Marronniers, Bordeaux
", phone_number: "078765677", description: "I can handle booze like a viking but I have the bladder of a small child!", price: 20)
friend2.photo.attach(io: file, filename: 'pauline.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384273/Antoine_vyguh4.jpg')
friend3 = Friend.new(first_name: "Antoine", last_name: "Marcel", email:"stadetoulousain@olympique.com", birth_date:Date.new(1990,11,03), address: "
165 Rue Fondaudège, Bordeaux", phone_number: "0798686767", description: "Fishing relaxes me, it's like yoga. Except I still get to kill something!", price: 12)
friend3.photo.attach(io: file, filename: 'antoine.jpg', content_type: 'image/jpg')
friend3.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384282/Jules_fjrvay.jpg')
friend4 = Friend.new(first_name: "Jules", last_name: "Coucou", email:"jules@coucou.com", birth_date:Date.new(1993,4,01), address: "10 rue Camille Godard, Bordeaux", phone_number: "078765677", description: "I'm scared by the unstoppable marching of time that is slowly guiding us towards an inevitable death and I don't like cats...", price: 200)
friend4.photo.attach(io: file, filename: 'jules.jpg', content_type: 'image/jpg')
friend4.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384274/Aude_w09hab.jpg')
friend = Friend.new(first_name: "Aude", last_name: "Sympa", email:"aude@sympa.com", birth_date:Date.new(1981,2,20), address: "25 rue de Rivoli, Paris
", phone_number: "0798686767", description: "I like football, going out with friends, play video games, sacrificing puppies in the name of Satan, fishing and cooking :p", price: 50)
friend.photo.attach(io: file, filename: 'aude.jpg', content_type: 'image/jpg')
friend.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384280/Jospeh_wdagbr.jpg')
friend2 = Friend.new(first_name: "Joseph", last_name: "Marrant", email:"jopseh@marrant.com", birth_date:Date.new(1992,9,03), address: "15 rue des archives, Paris", phone_number: "078765677", description: "Listen to hardcore heavy metal to fall asleep. Easily turned on by cars, I would love to walk you around my beautiful city!", price: 28)
friend2.photo.attach(io: file, filename: 'joseph.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384272/Alexis_1_ftvd56.jpg')
friend3 = Friend.new(first_name: "Alexis", last_name: "Dupont", email:"alexis@dupont.com", birth_date:Date.new(1995,8,18), address: "24 Rue de Quatrefages, Paris", phone_number: "0798686767", description: "I did'nt choose the thug life, the thug life chose me...", price: 5)
friend3.photo.attach(io: file, filename: 'alexis.jpg', content_type: 'image/jpg')
friend3.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384279/Jerome_esvlbr.jpg')
friend4 = Friend.new(first_name: "Jerôme", last_name: "Biscoto", email:"jerome@biscoto.com", birth_date:Date.new(1988,2,12), address: "63 boulevard garibaldi, Paris", phone_number: "078765677", description: "I'm not wearing any socks, I prefer long barefoot walk on the woods, listening to wild animals and sometimes screaming with them, join me for a huge adventure!", price: 10)
friend4.photo.attach(io: file, filename: 'jerome.jpg', content_type: 'image/jpg')
friend4.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384283/Lilian_heupbl.jpg')
friend2 = Friend.new(first_name: "Lilian", last_name: "Costaud", email:"lilian@laposte.com", birth_date:Date.new(1992,3,18), address: "28 cours Alsace-Lorraine, Bordeaux
", phone_number: "078765677", description: "Young, wild and free. Please be on time when we will me, I have things to do after.", price: 30)
friend2.photo.attach(io: file, filename: 'lilian.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384282/Julie_yjh7hx.jpg')
friend2 = Friend.new(first_name: "Julie", last_name: "Cake", email:"julie@laposte.com", birth_date:Date.new(1993,8,11), address: "1 Rue Audran, Lyon
", phone_number: "078765677", description: "I love baking, sharing cakes with friends and my hamster. I can make you diabetic after just 2 weeks!", price: 50)
friend2.photo.attach(io: file, filename: 'julie.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384276/Edouard_ksk1nb.jpg')
friend2 = Friend.new(first_name: "Edouard", last_name: "Fun", email:"edouard@laposte.com", birth_date:Date.new(1993,10,10), address: "1 Rue Auguste Comte, Lyon
", phone_number: "078765677", description: "I always keep a loaded gun on my nightstand in the event of an intruder, so I can shoot myself tp avoid meeting new people.", price: 78)
friend2.photo.attach(io: file, filename: 'Edouard.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384277/Fabiola_ti4gra.jpg')
friend2 = Friend.new(first_name: "Fabiola", last_name: "Samba", email:"fabiola@laposte.com", birth_date:Date.new(1986,2,27), address: "1 Rue d'Auvergne, Lyon
", phone_number: "078765677", description: "I love dancing, discovering new things. Very good to defend myself, especially with an umbrella!", price: 59)
friend2.photo.attach(io: file, filename: 'Fabiola.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384272/Allan_maxwg8.jpg')
friend2 = Friend.new(first_name: "Allan", last_name: "Fight", email:"allan@laposte.com", birth_date:Date.new(1993,6,5), address: "1 Rue Anselme, Lyon
", phone_number: "078765677", description: "I can show you the world, shining, shimmering, splendid... fan of Disney movies I'll be glad to go the movie with you.", price: 40)
friend2.photo.attach(io: file, filename: 'Allan.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384290/Yohann_he720g.jpg')
friend2 = Friend.new(first_name: "Yohann", last_name: "Aviator", email:"yohann@laposte.com", birth_date:Date.new(1985,1,10), address: "1 Rue d'Amsterdam, Lyon
", phone_number: "078765677", description: "Brunch eater, I also like running, clubbing, partying, don't hesitate to book me if you need a +1 to your private parties!", price: 180)
friend2.photo.attach(io: file, filename: 'Yohann.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384289/Valentine_ncifnh.jpg')
friend2 = Friend.new(first_name: "Valentine", last_name: "Pets", email:"valentine@laposte.com", birth_date:Date.new(1985,5,19), address: "1 Rue Albertini, Marseille
", phone_number: "078765677", description: "Don't let my nice face fool you, I'm a real tiger on the ring, passionate about boxing, I can show you the best underground clubs...", price: 34)
friend2.photo.attach(io: file, filename: 'Valentine.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384288/Romain_itnhh7.jpg')
friend2 = Friend.new(first_name: "Romain", last_name: "Boat", email:"romain@laposte.com", birth_date:Date.new(1989,4,17), address: "1 Cours Arnaud, Marseille
", phone_number: "078765677", description: "New in Marseille we can discover this city together. I used to live in Bordeaux. Good at drinking alcohol. Nice with new people (less with old friends). Afraid of dogs.", price: 55)
friend2.photo.attach(io: file, filename: 'Romain.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384287/Quentin_t143pe.jpg')
friend2 = Friend.new(first_name: "Quentin", last_name: "Late", email:"quentin@laposte.com", birth_date:Date.new(1993,6,20), address: "1 rue Arnaud, Marseille
", phone_number: "078765677", description: "Like to cook, good dancer, Vikings fan, college graduated and have an adult job, exercise on the reg, enjoy the beach, cat lover.", price: 100)
friend2.photo.attach(io: file, filename: 'Quentin.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384278/Florian_mmt3ld.jpg')
friend2 = Friend.new(first_name: "Florian", last_name: "AllezOM", email:"florian@laposte.com", birth_date:Date.new(1985,7,21), address: "3 Boulevard Michelet, Marseille
", phone_number: "078765677", description: "I would love to share this amazing city secrets with you, also if you need someone to talk to I'll be glad to listen :)", price: 400)
friend2.photo.attach(io: file, filename: 'Florian.jpg', content_type: 'image/jpg')
friend2.save!


puts "on est trop fort !"

