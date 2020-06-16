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

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592233060/etty-fidele-6UWqw25wfLI-unsplash_hjgka0.jpg')
friend = Friend.new(first_name: "Paul", last_name: "Gentil", email:"paul@gentil.com", birth_date:Date.new(1999,2,04), city: City.last)
friend.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
friend.save!

file = URI.open('https://res.cloudinary.com/dvwipbafx/image/upload/v1592233061/julian-wan-WNoLnJo7tS8-unsplash_ygjeft.jpg')
friend2 = Friend.new(first_name: "Pierre", last_name: "Méchant", email:"Pierre@mechant.com", birth_date:Date.new(1997,2,04), city: City.first)
friend2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
friend2.save!

puts "create bookings"

Booking.create(starting_date:Date.new(2020-06-16), ending_date:Date.new(2020-06-17), user: User.first, friend: Friend.first)
Booking.create(starting_date:Date.new(2020-06-17), ending_date:Date.new(2020-06-19), user: User.last, friend: Friend.last)

puts "on est trop fort !"

