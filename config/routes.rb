Rails.application.routes.draw do
   
   namespace :api do
     get "/products" => "products#index"
     get "/products/:id" => "products#show"
     post "/products" => "products#create"
     patch "/products/:id" => "products#update"
     delete "/products/:id" => "products#destroy"

     get "/suppliers" => "suppliers#index"
     get "/suppliers/:id" => "suppliers#show"
     post "/suppliers" => "suppliers#create"
     patch "/suppliers/:id" => "suppliers#update"

     post "/users" => "users#create"
     post "/sessions" => "sessions#create"

     get "/orders" => "orders#index"
     post "/orders" => "orders#create"
     
     get "/carted_products" => "carted_products#index"
     post "/carted_products" => "carted_products#create"
     delete "/carted_products/:id" => "carted_products#destroy"
   end
     get "/products" => "products#index"
     get "/products/new" => "products#new"
     post "products" => "products#create"
     get "/products/:id" => "products#show"
     get "/products/:id/edit" => "products#edit"
     patch "/products/:id" => "products#update"
     delete "products/:id" => "products#destroy"
end
