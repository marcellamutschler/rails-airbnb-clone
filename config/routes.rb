
Rails.application.routes.draw do


  # get 'wishlists/index'

  # get 'wishlists/show'

  # get 'wishlists/new'

  # get 'wishlists/create'

  # get 'wishlists/edit'

  # get 'wishlists/update'

  # get 'wishlists/destroy'

  # get 'reviews/index'

  # get 'reviews/show'

  # get 'reviews/new'

  # get 'reviews/create'

  # get 'reviews/edit'

  # get 'reviews/update'

  # get 'reviews/destroy'

  # get 'availabilities/index'

  # get 'availabilities/show'

  # get 'availabilities/new'

  # get 'availabilities/create'

  # get 'availabilities/edit'

  # get 'availabilities/update'

  # get 'availabilities/destroy'

  # get 'amenities/index'

  # get 'amenities/show'

  # get 'amenities/new'

  # get 'amenities/create'

  # get 'amenities/edit'

  # get 'amenities/update'

  # get 'amenities/destroy'

  # get 'pages/home'

   root to: "pages#home"



  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings, only: [:new ,:create]
    # creermoi toutes les routes
  resources :reviews, only: [:index]
  end

  mount Attachinary::Engine => "/attachinary"
  resources :bookmarks, only: [:index, :create, :update, :destroy]
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
        resources :reviews, except:[:index]
    end
    get 'myvenues'

  end
    # ici on parle de 2 méthodes
    #génére  toutes les routes mais emt profile au singulier
 # end


end

