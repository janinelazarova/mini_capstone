class Api::ProductsController < ApplicationController
  def about
      @products = Product.all
     # @products.each do |product|
      #   @products << product
      # end  
      render 'all_products.json.jbuilder'
  end
end
