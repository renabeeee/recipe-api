Rails.application.routes.draw do
  post "/recipes" => "recipes#create"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  post "/ingredients" => "ingredients#create"
  patch "/ingredients/:id" => "ingredients#update"
  get "/full-pantry" => "pantry_items#index"
  post "/sessions" => "sessions#create"
  post "/add-to-pantry" => "pantry_items#create"
  delete "/remove-from-pantry" => "pantry_items#destroy"
end
