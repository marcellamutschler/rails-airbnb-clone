class PagesController < ApplicationController
  # controller qui renvoit à la view - home
  # si on utitlise une variable @pomme ds view HTML home, c'est ici
  # qu'on devrait la définir
  skip_before_action :authenticate_user!, only: :home

  def home
    # the name of the method has to do with our routes
    # rails.routes --> show#home
    @cities = Venue.where.not(city: nil).to_a.map{|b| b.city}
    #AR method to guet cities frim venues that have cities, then
    # it returns us an array of cities
    @categories = ['Wedding', 'Party', 'Baptism', 'Workshop', 'Trainings', 'Social Event', 'Desk Rentals', 'Conferences', 'Launch Event', 'Business Meeting', 'Birthday', 'Photo Shoot', 'Film Shoot', 'Concert', 'Get-Together', 'Other']
  end





end

