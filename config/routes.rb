Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :friends, only: [:index, :show]
  resources :bookings, except: [:new]
end
