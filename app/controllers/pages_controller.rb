class PagesController < ApplicationController
  # controller qui renvoit à la view - home
  # si on utitlise une variable @pomme ds view HTML home, c'est ici
  # qu'on devrait la définir
  skip_before_action :authenticate_user!, only: :home
  def home
  end
end
