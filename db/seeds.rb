CITY_VENUE = ["Frankfurt", "Berlin", "Milan", "Munich", "Barcelona" ]
ADJECTIVE_VENUE = ["Modern", "Romantic", "Unique", "Special"]

RAMDOM_VENUE_IMAGE = 'http://lorempixel.com/640/480/city'
RAMDOM_PEOPLE = 'http://lorempixel.com/640/480/people'

# puts "destroying records... please wait..."
# User.destroy_all


Venue.destroy_all
Availability.destroy_all
Profile.destroy_all
User.destroy_all
Booking.destroy_all
Bookmark.destroy_all
Conversation.destroy_all



venue1 = Venue.create

Registration.destroy_all
Event.destroy_all
User.destroy_all
ruben = User.new({
  email: "ruben@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Ruben",
  last_name: "Frommanresa",
  organization: "Help Orphan Puppies",
  phone: "0909090909",
  photo_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhQAAAAJDFlZjZmZmYwLWQ5ZTgtNDc1ZS1iNzM1LWJmZmQ3Mjc5OWE2Yw.jpg"
  })


johnny = User.new({
  email: "johnny@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Johnny",
  last_name: "Deep",
  organization: "DailyHelp",
  phone: "0909090909",
  photo_url: "http://xewt12.com/wp-content/uploads/2016/02/johnny-depp-dior-vogue-3jun15-pr_b.jpg"
  })



jackie = User.new({
  email: "jackie-kennedy@kennedy.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Jackie",
  last_name: "Kenny",
  organization: "nationalbreastcancer.org, Language Integration for Syrian Refugee Children",
  phone: "0908076532",
  bio: "I'm a famous tandem cycling lover who loves mechanics. I love Barcelona and want to make a difference in my community.",
  photo_url: "http://www.thefamouspeople.com/profiles/images/jackie-kennedy-21.jpg",
  })
jeanjacques = User.new({
  email: "jeanjakie@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  organization: "Save Our Beach",
  first_name: "Jean-Jacques",
  last_name: "Rousseau",
  phone: "09080787632",
  photo_url: "http://www.sarahbeaucheminwriter.com/wp-content/uploads/2014/11/rousseau.jpg"
  })


alex = User.new({
  email: "alex-el-rider@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  organization: "HolaBici Coalition",
  first_name: "Alex",
  last_name: "Fernandez",
  phone: "09080787632",
  bio: "Hi, my name is Alex and I'm a bici lover and manager at HolaBici.
  HolaBici is your community bicycle workshop and thrift store.
  HolaBici Coalition has been working to make Barcelona a great place to ride a bike for over 25 years. By working with City Administrators, Educators, and Planners, we’re putting el Raval on track so that bicycling is safe, accessible, and enjoyable for everyone.",
  photo_url: "http://res.cloudinary.com/demo/image/fetch/http://cdn.mos.cyclingnews.com/2016/03/24/2/bettini_catalunya_4-300-80.jpg"
  })


jane = User.new({
  email: "jane@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  organization: "BCN Sandwich Run",
  first_name: "Jane",
  last_name: "Butterfly",
  phone: "09080787632",
  bio: "I have been involved in homeless street outreach for the last nine years, leading volunteer groups and individuals who want to meet and help the homeless where they live - out on the street, in shelters or drop-ins, and food banks.
The program I facilitate is called the 'Sandwich Run' which involves volunteers delivering nutritious bag lunches to homeless street people by walking well travelled routes in the downtown area of Toronto where street people live.",
  photo_url: "http://res.cloudinary.com/demo/image/fetch/https://s-media-cache-ak0.pinimg.com/originals/9f/71/12/9f71124b93343d50f68548af271a54db.jpg"
  })


james = User.new({
  email: "james@gmail.com",
  password: "james@gmail.com",
  password_confirmation: "james@gmail.com",
  organization: "El Refugio Barcelona",
  first_name: "James",
  last_name: "B",
  phone: "09080787632",
  bio: "I like to help others but it wasn't until i found Volunteasy that my life changed forever. Now i can help people whenever I want :) Most important : I love puppies.",
  photo_url: "https://avatars3.githubusercontent.com/u/5620278?v=3&s=400"
  })


alex.save
johnny.save
ruben.save
jackie.save
jane.save
james.save
jeanjacques.save
puts ruben.attributes
puts jeanjacques.attributes
puts jackie.attributes




# participant
joe = User.new({
  email: "joel@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Joe",
  last_name: "Froogy",
  photo_url: "http://res.cloudinary.com/demo/image/fetch/http://cdn.mos.cyclingnews.com/2016/03/24/2/bettini_catalunya_4-300-80.jpg"  })
jimmy = User.new({
  email: "jimmy@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Jimmy",
  last_name: "Ballon",
  photo_url: "http://res.cloudinary.com/demo/image/fetch/http://cdn.mos.cyclingnews.com/2016/03/24/2/bettini_catalunya_4-300-80.jpg"  })
julia = User.new({
  email: "julia@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Julia",
  last_name: "Roberts",
  photo_url: "http://res.cloudinary.com/demo/image/fetch/https://s-media-cache-ak0.pinimg.com/originals/9f/71/12/9f71124b93343d50f68548af271a54db.jpg"
  })
mariah = User.new({
  email: "mariah@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Mariah",
  last_name: "Triangle",
  photo_url: "http://www.billboard.com/files/styles/article_main_image/public/media/mariah-carey-july-2014-billboard-650.jpg"
  })

marina =  User.new({
  email: "marina@gmail.com",
  password: "rosebud",
  password_confirmation: "rosebud",
  first_name: "Marina",
  last_name: "Elpaso",
  bio: 'As a volunteer, I’ve learned that no matter how troubled our past, how despairing our present we all have one thing in common – our humanity. We are all struggling to survive and find our place in the world. I have learned how to be a support for others without getting bogged down by the pain of others.',
  photo_url: "http://ramblingmandie.com/wp-content/uploads/2014/09/girl-volunteering.jpg"
  })





mariah.save
joe.save
marina.save
julia.save
jimmy.save
puts joe.attributes
puts julia.attributes
puts jimmy.attributes
puppy_feeding = Event.new({
  name: "Puppy feeding",
  organizer_id: james.id,
  start_time: DateTime.strptime("19:00 10/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 10/03/2017", "%H:%M %d/%m/%Y"),
  address: "Refugi, Carrer Nou de la Rambla, 175, 08004 Barcelona",
  capacity: 8,
  description: "Help us feeding puppies at Barcelona shelter!",
  tags: ["Animals"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://s3.amazonaws.com/assets.prod.vetstreet.com/36/57/b54c6efb461ba404656741ea0722/puppy-raisers-janet-keeler-fawn.jpg"
  ]
  })


puppy_feeding2 = Event.new({
  name: "Help us take care of an orphaned litter of puppies",
  organizer_id: ruben.id,
  start_time: DateTime.strptime("14:00 13/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("18:00 13/03/2017", "%H:%M %d/%m/%Y"),
  address: "Refugi, Carrer Nou de la Rambla, 175, 08004 Barcelona",
  capacity: 8,
  description: "Help us feeding puppies at Barcelona shelter!",
  tags: ["Animals"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://s3.amazonaws.com/assets.prod.vetstreet.com/36/57/b54c6efb461ba404656741ea0722/puppy-raisers-janet-keeler-fawn.jpg"
  ]
  })

teaching_refugees_spanish = Event.new({
  name: "Teach refugees spanish",
  organizer_id: jackie.id,
  start_time: DateTime.strptime("19:00 19/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 19/03/2017", "%H:%M %d/%m/%Y"),
  address: "Centro del Estudio, Carrer de la Princesa, 08003 Barcelona",
  capacity: 8,
  description: "No specific skills required, just a desire to help and a friendly smile",
  tags: ["Education", "Crisis Support"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://teachforall.org/sites/default/files/styles/news_network_learning_node_image/public/Storify%20news%20post.jpg?itok=sk0N5lWf"
  ]
  })

teaching_refugees_spanish = Event.new({
  name: "Teach refugees spanish",
  organizer_id: jackie.id,
  start_time: DateTime.strptime("19:00 17/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 17/03/2017", "%H:%M %d/%m/%Y"),
  address: "Centro del Estudio, Carrer de la Princesa, 08003 Barcelona",
  capacity: 8,
  description: "No specific skills required, just a desire to help and a friendly smile",
  tags: ["Education", "Crisis Support"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://teachforall.org/sites/default/files/styles/news_network_learning_node_image/public/Storify%20news%20post.jpg?itok=sk0N5lWf",
  "http://res.cloudinary.com/demo/image/fetch/http://teachforall.org/sites/default/files/styles/news_network_learning_node_image/public/Storify%20news%20post.jpg?itok=sk0N5lWf"]
  })

teaching_refugees_english = Event.new({
  name: "Teach refugees english",
  organizer_id: jackie.id,
  start_time: DateTime.strptime("19:00 22/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 22/03/2017", "%H:%M %d/%m/%Y"),
  address: "Centro del Estudio, Carrer de la Princesa, 08003 Barcelona",
  capacity: 8,
  description: "No specific skills required, just a desire to help and a friendly smile",
  tags: ["Education", "Crisis Support"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://teachforall.org/sites/default/files/styles/news_network_learning_node_image/public/Storify%20news%20post.jpg?itok=sk0N5lWf"
  ]
  })
beach_cleaning = Event.new({
  name: "Let's clean the beach!",
  organizer_id: jeanjacques.id,
  start_time: DateTime.strptime("19:00 20/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 20/03/2017", "%H:%M %d/%m/%Y"),
  address: "Platja de la Barceloneta, 08003 Barcelone",
  capacity: 15,
  description: "Let's work together for a nicer beach :)",
  tags: ["Animals", "Environment"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://www.editorial.sg/wp-content/uploads/17THBEACH_116636f.jpg"
  ]
  })
nursing_home = Event.new({
  name: "Cup of tea at the Nursing Home",
  organizer_id: jeanjacques.id,
  start_time: DateTime.strptime("19:00 16/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 16/03/2017", "%H:%M %d/%m/%Y"),
  address: "Paradise Nursing Home, calle Sardenya, 08765 Barcelona",
  capacity: 5,
  description: "Come for a chat and share a meal with our residents",
  tags: ["Seniors", "People with disabilities"],
  photo_urls:[
    "http://res.cloudinary.com/demo/image/fetch/http://teensgotcents.com/wp-content/uploads/2014/08/nursinghome1-1024x766.jpg"
  ]
  })
plant_trees = Event.new({
  name: "Help save local forest",
  organizer_id: jeanjacques.id,
  start_time: DateTime.strptime("19:00 08/03/2017", "%H:%M %d/%m/%Y"),
  end_time: DateTime.strptime("21:00 08/03/2017", "%H:%M %d/%m/%Y"),
  address: "Selva de Montseny, 08766 Barcelona",
  capacity: 5,
  description: "We'll plant trees and discuss about local initiatives",
  tags: ["Environment"],
  photo_urls: [
    "http://res.cloudinary.com/demo/image/fetch/http://news.valenciacollege.edu/files/2012/03/Tree-Campus-for-Home-Page-1851.jpg"
  ]
  })
sewing = Event.new({
  name: "Activity volunteer - sewing",
  organizer_id: jackie.id,
  start_time:...







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


















