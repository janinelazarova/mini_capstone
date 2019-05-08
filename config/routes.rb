Rails.application.routes.draw do
  
  get "/all_products" => "api/products#about"

end
