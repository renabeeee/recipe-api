Rails.application.routes.draw do
  post "/recipes" => "recipes#create"

end
