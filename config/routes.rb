Rails.application.routes.draw do

  devise_for :users
  resources :passwords do
    resources :shares, only: [:new, :create, :destroy]
  end

  # Defines the root path route ("/")
  root "passwords#index"
end
