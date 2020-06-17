require "open-uri"

puts "Destroying db"

Booking.destroy_all
User.destroy_all
Friend.destroy_all
City.destroy_all


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

puts "create cities"

City.create(name: "Bordeaux")
City.create(name: "Paris")

puts "create friends"

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384284/Mathieu_ol9xei.jpg')
friend = Friend.new(first_name: "Matthieu", last_name: "Gentil", email:"matthieu@gentil.com", birth_date:Date.new(1993,2,04), city: City.last, phone_number: "0798686767", description: "I'm able to make a large number of hilarious jokes on several topics, including yo mama jokes")
friend.photo.attach(io: file, filename: 'matthieu.jpg', content_type: 'image/jpg')
friend.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384286/Pauline_rjiend.jpg')
friend2 = Friend.new(first_name: "Pauline", last_name: "Rigolote", email:"pauline@laposte.com", birth_date:Date.new(1990,2,04), city: City.first, phone_number: "078765677", description: "I can handle booze like a viking but I have the bladder of a small child")
friend2.photo.attach(io: file, filename: 'pauline.jpg', content_type: 'image/jpg')
friend2.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384273/Antoine_vyguh4.jpg')
friend3 = Friend.new(first_name: "Antoine", last_name: "Sérieux", email:"jesuisserieux@vraiment.com", birth_date:Date.new(1999,2,04), city: City.last, phone_number: "0798686767", description: "I'm able to make a large number of hilarious jokes on several topics, including yo mama jokes")
friend3.photo.attach(io: file, filename: 'antoine.jpg', content_type: 'image/jpg')
friend3.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592384282/Jules_fjrvay.jpg')
friend4 = Friend.new(first_name: "Jules", last_name: "Coucou", email:"jules@coucou.com", birth_date:Date.new(1997,2,04), city: City.first, phone_number: "078765677", description: "I can handle booze like a viking but I have the bladder of a small child")
friend4.photo.attach(io: file, filename: 'jules.jpg', content_type: 'image/jpg')
friend4.save!


puts "create bookings"

Booking.create(starting_date:Date.new(2020-06-16), ending_date:Date.new(2020-06-17), user: User.first, friend: Friend.first)
Booking.create(starting_date:Date.new(2020-06-17), ending_date:Date.new(2020-06-19), user: User.last, friend: Friend.last)

puts "on est trop fort !"

