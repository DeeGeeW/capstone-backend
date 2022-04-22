Rails.application.routes.draw do
 
  
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"



    get "/locations" => "locations#index"
    post "/locations" => "locations#create"
    get "/locations/:id" => "locations#show"
    patch "/locations/:id" => "locations#update"
    delete "/locations/:id" => "locations#destroy"



    get "/birds" => "birds#index"
    post "/birds" => "birds#create"
    get "/birds/:id" => "birds#show"
    patch "/birds/:id" => "bird#update"
    delete "/birds/:id" => "bird#destroy"
 
end
