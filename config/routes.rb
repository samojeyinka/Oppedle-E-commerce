Rails.application.routes.draw do
  namespace :admin, constraints: ->(request) { request.env["warden"].user&.admin? } do
    resources :products do
      resources :stocks
    end
    resources :categories
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

   # Defines the root path route ("/")
   root "home#index"

   get "admin" => "admin#index", constraints: ->(request) { request.env["warden"].user&.admin? }

   get "products" => "products#test_show"

   resources :products do
    post "add_to_cart", on: :collection
  end

   resources :categories, only: [ :show ]
   resource :cart, only: [ :show, :update, :destroy ]
   resources :orders, only: [ :index, :new, :create ]
end
