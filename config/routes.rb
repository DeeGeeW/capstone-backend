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
    patch "/birds/:id" => "birds#update"
    delete "/birds/:id" => "birds#destroy"

    get "/comments" => "comments#index"
    post "/comments" => "comments#create"
    get "/comments/:id" => "comments#show"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    get "/requests" => "requests#index"
    post "/requests" => "requests#create"
    get "/requests/:id" => "requests#show"
    patch "/requests/:id" => "requests#update"
    delete "/requests/:id" => "requests#destroy"

    post "/sessions" => "sessions#create"
 
end
