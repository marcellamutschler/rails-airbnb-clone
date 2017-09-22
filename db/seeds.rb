CITY_VENUE = ["Frankfurt", "Berlin", "Milan", "Munich", "Barcelona", "Madrid", "Hamburg", "Luxemburg", "Zurich", "Paris", "London", "Marseille", "Porto", "Stockholm", "Copenhagen", "Amsterdam", "Vienna", "Marseille", "Lyon"]
ADJECTIVE_VENUE = ["modern", "romantic", "artsy", "unique", "special"]
RAMDOM_VENUE_IMAGE = 'http://lorempixel.com/640/480/city'
RAMDOM_PEOPLE = 'http://lorempixel.com/640/480/people'


User.destroy_all

25.times do
  user = User.new(email: Faker::Internet.email, password: '12345678')
  user.save
  profile = Profile.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  profile.user = user

  profile.photo_url = RAMDOM_PEOPLE
  puts 'user: #{user.full_name} created' if profile.save

  4.times do
    category_venue = [Venue::CATEGORIES.sample]
    amenitiy_venue = [Venue::AMENITIES.sample]
    venue_name = ADJECTIVE_VENUE.sample +  category_venue.first + "Venue"
    venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: CITY_VENUE.sample, capacity: rand((20)+1)*10, location: "Frankfurt", description: Faker::Lorem.sentence, price: rand(20..200))

    venue.photo_urls = [RAMDOM_VENUE_IMAGE]
    venue.user = user
    puts "venue: #{venue.name} created" if venue.save
  end
end

