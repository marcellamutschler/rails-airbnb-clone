Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings
  end

  resources :users do
    resources :profile
  end
end

