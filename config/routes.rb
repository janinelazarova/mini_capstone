Rails.application.routes.draw do
   
   namespace :api do
     get "/products" => "products#index"
     get "/products/:id" => "products#show"
     post "/products" => "products#create"
     patch "/products/:id" => "products#update"
     delete "/products/:id" => "products#destroy"
   end
  #get "/all_products" => "api/products#about"
  #get "/first_product" => "api/products#first_product"
  #get "single_product" => "api/products#segment_params"
end
