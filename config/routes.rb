Rails.application.routes.draw do
  root to: "venues#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings
    # creermoi toutes les routes
  end

#  resources :users do
    resource :profile
    # ici on parle de 2 méthodes
    #génére  toutes les routes mais emt profile au singulier
 # end

end

