Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :edit, :update ]

  resources :friends, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, except: [:new, :create]
end
