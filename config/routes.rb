Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  devise_for :users
  
  resources :categories do
    resources :transactions
  end
end
