Rails.application.routes.draw do

  devise_for :users
  resources :passwords

  # Defines the root path route ("/")
  root "passwords#index"
end
