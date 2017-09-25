CITY_VENUE = ["Frankfurt", "Berlin", "Milan", "Munich", "Barcelona" ]
ADJECTIVE_VENUE = ["modern", "romantic", "artsy", "unique", "special"]

RAMDOM_VENUE_IMAGE = 'http://lorempixel.com/640/480/city'
RAMDOM_PEOPLE = 'http://lorempixel.com/640/480/people'

# puts "destroying records... please wait..."
# User.destroy_all

50.times do
  user = User.new(email: Faker::Internet.email, password: '12345678')
  user.save
  profile = Profile.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  profile.user = user

  profile.photo_url = RAMDOM_PEOPLE
  puts "user: #{user.full_name} created" if profile.save

  10.times do
    category_venue = [Venue::CATEGORIES.sample]
    amenitiy_venue = [Venue::AMENITIES.sample]
    city = CITY_VENUE.sample
    venue_name = ADJECTIVE_VENUE.sample + " " + category_venue.first + " " + "Venue"
    venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: rand((20)+1)*10, location: city, description: Faker::Lorem.sentence, price: rand(20..200))

    venue.photo_urls = [RAMDOM_VENUE_IMAGE]
    venue.user = user
    puts "venue: #{venue.name} created" if venue.save
  end
end

