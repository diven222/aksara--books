Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Auth
      post "login", to: "auth#login"
      post "register", to: "auth#register"

      # Books
      resources :books, only: [:index, :show]

      # Categories
      resources :categories, only: [:index]

      # Cart
      get "cart", to: "cart#show"
      post "cart/items", to: "cart#add_item"
      patch "cart/items/:id", to: "cart#update_item"
      delete "cart/items/:id", to: "cart#remove_item"
    end
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
