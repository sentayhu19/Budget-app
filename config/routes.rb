Rails.application.routes.draw do
  resources :categories_transaction1s
  resources :transactions1s
  resources :categories
  authenticated :user do
    root to: 'categories#index'
  end
  unauthenticated :user do
    root to: "splashs#index", as: :unauthenticated_root
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
