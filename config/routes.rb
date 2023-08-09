Rails.application.routes.draw do
  devise_for :users
  
  # Defines the root path route ("/")
  root "categories#index"

  resources :categories
  resources :transactions
  resources :users
end
