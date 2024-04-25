Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"

  get "books", to: "books#index", as: "books"
  get "books/:id", to: "books#show", as: "book"

  get "movies", to: "movies#index", as: "movies"
  get "movies/:id", to: "movies#show", as: "movie"
end
