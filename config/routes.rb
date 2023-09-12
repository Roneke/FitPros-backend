Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/current_user" => "users#show"
  patch "users/:id" => "user#update"
  post "/sessions" => "sessions#create"
  get "events" => "events#index"
  get "/events/:id" => "events#show"
  post "/events" => "events#create"
  post "/comments" => "comments#create"
  delete "/comments" => "comments#destroy"
  get "/comments" => "comments#index"
end
