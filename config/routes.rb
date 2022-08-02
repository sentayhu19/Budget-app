Rails.application.routes.draw do
  resources :transactions
  resources :categories
  root "users#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
