# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Venue.create(name: "Romantic Wedding Venue", capacity: 200, location: "Barcelona", description: "Beautiful Wedding Venue in the Heart of Barcelona", price: 100, user_id: 1)
Venue.create(name: "Artsy Studio", capacity: 50, location: "Berlin", description: "Modern studio for your photo-shooting, exhibition or fahsion shows", price: 70, user_id: 2)
Venue.create(name: "Modern Meeting Room", capacity: 30, location: "Frankfurt", description: "New meeting room for business events, pitches, etc.", price: 100, user_id: 3)

x = User.create(email: "max.mustermann@gmail.com", password: "password")

y = Venue.new(capacity: 400, location: "Madrid", description: "Factory hall for exhibitions, birthday-parties, photo shoots, fashion shows, etc.", price: 225)

y.user = x #we are association (you find the .user in the model of venue) y with the user x
y.save

Booking.create(status: "accepted", total_price: 300, user_id: 1, venue_id: 1)
Booking.create(status: "accepted", total_price: 400, user_id: 2, venue_id: 2)
Booking.create(status: "declined", total_price: 500, user_id: 3, venue_id: 4)
Booking.create(status: "declined", total_price: 100, user_id: 6, venue_id: 2)

Profile.create(first_name: "Max", last_name: "Mustermann", bio: "Max Mustermann, looking for nice venues for my events", user_id: 6)



