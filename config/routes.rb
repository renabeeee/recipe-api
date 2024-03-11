Rails.application.routes.draw do
  post "/recipes" => "recipes#create"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  post "/ingredients" => "ingredients#create"
  patch "/ingredients/:id" => "ingredients#update"
end
