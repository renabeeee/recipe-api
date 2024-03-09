Rails.application.routes.draw do
  post "/recipes" => "recipes#create"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

end
