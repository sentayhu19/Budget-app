Rails.application.routes.draw do
  resources :categories_transaction1s
  resources :transactions1s
  resources :categories
  root "splashs#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
