Rails.application.routes.draw do

  #users Model
  get "/users" => "users#index"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

  #ingredients Model
  post "/ingredients" => "ingredients#create"
  patch "/ingredients/:id" => "ingredients#update"
  delete "/ingredients/:id" => "ingredients#destroy"

  #pantry_items Model
  get "/my-pantry" => "pantry_items#index"
  post "/add-to-pantry" => "pantry_items#create"
  delete "/remove-from-pantry" => "pantry_items#destroy"

  #sessions Model
  post "/sessions" => "sessions#create"

  #recipes Model
  post "/recipes" => "recipes#create"

end
