class PagesController < ApplicationController
  # controller qui renvoit à la view - home
  # si on utitlise une variable @pomme ds view HTML home, c'est ici
  # qu'on devrait la définir
  skip_before_action :authenticate_user!, only: [:home, :test_page]
  layout 'test_layout', only: :test_page

  def home
    # the name of the method has to do with our routes
    # rails.routes --> show#home
    @cities = Venue.where.not(city: nil).to_a.map{|b| b.city}.uniq.sort

        #AR method to guet cities frim venues that have cities, then
    # it returns us an array of cities
    @categories = ['Wedding', 'Party', 'Baptism', 'Workshop', 'Training', 'Social Event', 'Desk Rental', 'Conference', 'Launch Event', 'Business Meeting', 'Birthday', 'Photo Shoot', 'Film Shoot', 'Concert', 'Get-Together'].sort
    #@city = params["city"]
    #@categ = params["categories"]
  end



  def test_page

  end
end

