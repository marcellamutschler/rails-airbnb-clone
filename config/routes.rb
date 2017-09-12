Rails.application.routes.draw do
  root to: "venues#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings
  end

  resources :profile

end

