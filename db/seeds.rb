CITY_VENUE = ["Frankfurt", "Berlin", "Milan", "Munich", "Barcelona" ]
ADJECTIVE_VENUE = ["Modern", "Romantic", "Unique", "Special"]

RAMDOM_VENUE_IMAGE = 'http://lorempixel.com/640/480/city'
RAMDOM_PEOPLE = 'http://lorempixel.com/640/480/people'

# puts "destroying records... please wait..."
# User.destroy_all

########### luca experimenting ###########


      urls = [
        'https://i.pinimg.com/736x/6c/2a/a7/6c2aa737b44ae57ae6252e319254022b--outdoor-wedding-venues-wedding-locations-florida.jpg',
        'http://mtlweddingblog.com/wp-content/uploads/2015/12/montreal-wedding-venues_0957.jpg',
        'https://i.pinimg.com/736x/25/ef/03/25ef03c6ad3861c0087954c7b86aefbf--boston-wedding-venues-wedding-reception-venues.jpg',
        'https://www.oliverbonacinievents.com/OBEvents/media/venue-images/carlu-01.jpg?width=1930&height=1080&ext=.jpg'
      ]


      category_venue = [Venue::CATEGORIES.sample]
      amenitiy_venue = [Venue::AMENITIES.sample]
      city = CITY_VENUE.sample
      venue_name = ADJECTIVE_VENUE.sample + " " + category_venue.first + " " + "Venue"
      venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: rand((20)+1)*10, location: city, description: Faker::Lorem.sentence, price: rand(20..200))

      venue.photo_urls = urls
      venue.user = User.last
      puts "venue: #{venue.name} created" if venue.save



###############################@@#################





# 2.times do
#   user = User.new(email: Faker::Internet.email, password: '12345678')
#   user.save
#   profile = Profile.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#   profile.user = user

#   profile.photo_url = RAMDOM_PEOPLE
#   puts "user: #{user.full_name} created" if profile.save

#   5.times do
#     category_venue = [Venue::CATEGORIES.sample]
#     amenitiy_venue = [Venue::AMENITIES.sample]
#     city = CITY_VENUE.sample
#     venue_name = ADJECTIVE_VENUE.sample + " " + category_venue.first + " " + "Venue"
#     venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: rand((20)+1)*10, location: city, description: Faker::Lorem.sentence, price: rand(20..200))

#     venue.photo_urls = [RAMDOM_VENUE_IMAGE]
#     venue.user = user
#     puts "venue: #{venue.name} created" if venue.save
#   end
# end

# streets = ["carrer d'Aldana", "carrer de Balmas", "carrer del Bruc", "carrer de Buenos Aires", "carrer de Corsega", "carrer de Nicaragua", "placa de la Universitat"]

# 5.times do
#   user = User.new(email: Faker::Internet.email, password: '12345678')
#   user.save
#   profile = Profile.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#   profile.user = user
#   profile.photo = Cloudinary::Uploader.upload("https://unsplash.it/200/300")

#   #profile.photo_url = RAMDOM_PEOPLE
#   puts "user: #{user.full_name} created" if profile.save

#   50.times do
#     category_venue = ["Party"]
#     amenitiy_venue = [Venue::AMENITIES.sample]
#     location = streets.sample + ' ' + rand(1..100).to_s + ', Barcelona'
#     venue_name = ADJECTIVE_VENUE.sample + " " + category_venue.first + " " + "Venue"
#     city = "Barcelona"
#     venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: rand(20..500), location: location, description: Faker::Lorem.sentence, price: rand(20..500))
#     #venue.photo_urls = [RAMDOM_VENUE_IMAGE]
#     venue.photo = Cloudinary::Uploader.upload("https://unsplash.it/200/300")
#     venue.user = user
#     if venue.save
#       puts "venue: #{venue.name} created"
#     else
#       puts venue.errors.full_messages
#     end
#   end
# end


#   user = User.new(email: "neil@gmail.com", password: "123456")
#   user.save
#   profile = Profile.new(first_name: "Neil Patrick", last_name: "Harris" )
#   profile.user = user
#   profile.photo = Cloudinary::Uploader.upload("https://static.comicvine.com/uploads/original/10/104544/4243824-3482981410-936fu.jpg")
#   category_venue = ["Party"]
#   amenitiy_venue = [Venue::AMENITIES.sample] #3times
#   location = streets.sample + ' ' + rand(1..100).to_s + ', Barcelona'
#   venue_name = "name 1"
#   city = "Barcelona"

#   venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: 500, location: location, description: , price: 500)

#   venue.photo_urls = ["asdsa", asds]
#   venue.user = user

#   venue = Venue.new(name: venue_name, categories: category_venue, amenities: amenitiy_venue, city: city, capacity: 500, location: location, description: , price: 500)






#   user = User.new(email: "mark@gmail.com", password: 'dasso007')
#   user.save
#   profile = Profile.new(first_name: "Mark", last_name: "Terenz" )
#   profile.user = user

# venue.photo_url

# names = ['name1', 'name2', 'name3']
# pics = ['pic1', 'pic2', 'pic3']

# names.each_with_index do |name, index|

#   puts name
#   url(pics[index])


# end


















