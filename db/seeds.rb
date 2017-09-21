# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

x = User.create(email: "imdaking@gmail.com", password: "muckfexico")
y = Profile.new(first_name: "Donald", last_name: "Trump")
x.user = y
x.save

dumble = User.create(email: "freshdumbledore@gmail.com", password: "expelliarmus")
dore = Profile.new(first_name: "Albus", last_name: "Dumbledore")

dore.user = dumble
dore.save

barney = User.create(email: "bromance@gmail.com", password: "tedsuitup")
stinson = Profile.new(first_name: "Barney", last_name: "Stinson")
stinson.user = barney
stinson.save
# Venue.create(name: "Romantic Wedding Venue", capacity: 200, location: "Barcelona", description: "Beautiful Wedding Venue in the Heart of Barcelona", price: 100, user_id: 1)
# Venue.create(name: "Artsy Studio", capacity: 50, location: "Berlin", description: "Modern studio for your photo-shooting, exhibition or fahsion shows", price: 70, user_id: 2)
# Venue.create(name: "Modern Meeting Room", capacity: 30, location: "Frankfurt", description: "New meeting room for business events, pitches, etc.", price: 100, user_id: 3)

# x = User.create(email: "max.mustermann@gmail.com", password: "password")

# y = Venue.new(capacity: 400, location: "Madrid", description: "Factory hall for exhibitions, birthday-parties, photo shoots, fashion shows, etc.", price: 225)

# y.user = x #we are association (you find the .user in the model of venue) y with the user x
# y.save

# Booking.create(user_id: 1, venue_id: 1)
# Booking.create(user_id: 2, venue_id: 2)
# Booking.create(user_id: 3, venue_id: 4)
# Booking.create(user_id: 6, venue_id: 2)

# Profile.create(first_name: "Max", last_name: "Mustermann", bio: "Max Mustermann, looking for nice venues for my events", user_id: 6)


# andrew = User.create(email: "andrew@gmail.com", password: "andrew")
# maria = User.create(email: "maria@gmail.com", password: "maria")
# jesus = User.create(email: "jesus@gmail.com", password: "christ")

# new_venue = Venue.new(capacity: 2, location: "Nazareth", description: "cozy place", price: 0 )

# name = Profile.new(first_name: "Jesus", last_name: "Christ", bio: "Hey check me out I am 2017 years old!")
# name.user = jesus
# name.save

# new_venue.user = maria
# new_venue.save

# 5.times do
#   user = User.new(email: Faker::Internet.email, password: '123456')
#   user.save
#   profile = Profile.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#   profile.user = user
#   profile.save
# end
