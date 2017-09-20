class PagesController < ApplicationController
  # controller qui renvoit à la view - home
  # si on utitlise une variable @pomme ds view HTML home, c'est ici
  # qu'on devrait la définir
  skip_before_action :authenticate_user!, only: :home

  def home
    # the name of the method has to do with
    @cities = Venue.where.not(city: nil).to_a.map{|b| b.city}
  end


end

