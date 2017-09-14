Rails.application.routes.draw do
  get 'pages/home'

  root to: "pages#home"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    # resources :bookings
    # creermoi toutes les routes
  end

  mount Attachinary::Engine => "/attachinary"

#  resources :users do
    resource :profile do
      resource :bookings
  end
    # ici on parle de 2 méthodes
    #génére  toutes les routes mais emt profile au singulier
 # end


end

