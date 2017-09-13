# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Venue.create(name: "beautiful flat", capacity: 100, location: "barcelona", description: "blabla", price: 25, user_id: 1)
Venue.create(name: "villa", capacity: 200, location: "barceloneta", description: "blabl", price: 20, user_id: 2)
Venue.create(name: "two rooms", capacity: 300, location: "barcelonarina", description: "blab", price: 255, user_id: 2)

x = User.create(email: "hey@gmail.com", password: "Ihave6letters")

y = Venue.new(capacity: 400, location: "bacelonarina", description: "bla", price: 225)

y.user = x #we are association (you find the .user in the model of venue) y with the user x
y.save

Booking.create(status: "accepted", total_price: 300, user_id: 1, venue_id: 1)
Booking.create(status: "accepted", total_price: 400, user_id: 2, venue_id: 2)
Booking.create(status: "declined", total_price: 500, user_id: 3, venue_id: 4)

Profile.create(first_name: "Celia", last_name: "Mutschler", bio: "He i am german", user_id: 6)


