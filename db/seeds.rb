puts "Destroying db"

Booking.destroy_all
User.destroy_all
Friend.destroy_all
City.destroy_all








puts "create users"

User.create(first_name: "George", last_name: "Gégé", email:"george.abruti@trescon.com", birth_date:Date.new(2001,2,3), password:"secret")
User.create(first_name: "Henry", last_name: "Premier", email:"henrylonely@gmail.com", birth_date:Date.new(1008,05,04), password:"secret")
User.create(first_name: "Lucas", last_name: "SkyWalker", email:"jedi@laforce.com", birth_date:Date.new(1993,2,3), password:"secret")


puts "create cities"

City.create(name: "Bordeaux")
City.create(name: "Paris")

puts "create friends"

Friend.create(first_name: "Paul", last_name: "Gentil", email:"paul@gentil.com", birth_date:Date.new(1999,2,04), city: City.last)
Friend.create(first_name: "Pierre", last_name: "Méchant", email:"Pierre@mechant.com", birth_date:Date.new(1997,2,04), city: City.first)

puts "create bookings"

Booking.create(starting_date:Date.new(2020-06-16), ending_date:Date.new(2020-06-17), user: User.first, friend: Friend.first)
Booking.create(starting_date:Date.new(2020-06-17), ending_date:Date.new(2020-06-19), user: User.last, friend: Friend.last)

puts "on est trop fort !"

