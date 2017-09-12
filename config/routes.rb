Rails.application.routes.draw do
  get 'pages/home'

  root to: "pages#home"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings
  end
    resources :profile


end

