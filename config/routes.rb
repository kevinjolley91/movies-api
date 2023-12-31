Rails.application.routes.draw do
  root "movies#index"

  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  # get "/movies" => "movies#index"
  get "/movies" => "movies_lookup#index"
  get "/movies/search/:query" => "movies_lookup#search"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites" => "favorites#delete"
end
