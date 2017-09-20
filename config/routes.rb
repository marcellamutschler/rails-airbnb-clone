
Rails.application.routes.draw do

   root to: "pages#home"



  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings, only: [:new ,:create]
      resources :reviews, only: [:index]
    # creermoi toutes les routes
  end

  mount Attachinary::Engine => "/attachinary"

#  resources :users do
  resources :conversations

  resources :profiles do
    resources :bookings, except: [:new ,:create] do
      collection do
        get 'owner', to: "bookings#owner", as: 'owner_bookings'
      end
      member do
        get 'accept', to: "bookings#accept", as: 'accept'
        get 'decline', to: "bookings#decline", as: 'decline'
      end
        resources :reviews, except: [:index]
    end
  end
    # ici on parle de 2 méthodes
    #génére  toutes les routes mais emt profile au singulier
 # end


end

