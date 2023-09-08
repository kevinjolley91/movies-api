Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  post "users" => "users#create"
  patch "users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
end

