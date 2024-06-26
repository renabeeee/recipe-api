Rails.application.routes.draw do

  #users Model
  get "/users" => "users#index"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  get "/users/username" => "users#username"
  get "/users/profile_image" => "users#profile_image"
  delete "/users/:id" => "users#destroy"

  #ingredients Model
  get "/ingredients" => "ingredients#index"
  patch "/ingredients/:id" => "ingredients#update"
  delete "/ingredients/:id" => "ingredients#destroy"
  post "/ingredients" => "ingredients#create"


  #pantry_items Model
  get "/my-pantry" => "pantry_items#index"
  post "/add-to-pantry" => "pantry_items#create"
  delete "/remove-from-pantry" => "pantry_items#destroy"

  #sessions Model
  post "/sessions" => "sessions#create"

  #recipes Model
  post "/recipes" => "recipes#create"
end
