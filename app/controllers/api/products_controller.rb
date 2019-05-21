class Api::ProductsController < ApplicationController

  before_action :authenticate_user
  
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 9)
    end

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = @products.order(:price)
      end
    end

    render 'index.json.jbuilder'                        
  end

  def show
          @product = Product.find(params[:id]) 
          render 'show.json.jbuilder'
  end

  def create
         @product = Product.new(
                 name: params[:name],
                 price:params[:price],
                 description: params[:description],
                 active: params[:active],
                 supplier_id: params[:supplier_id]
                 )

        if @product.save
          # happy path
          render 'show.json.jbuilder'
        else
          # sad path
          render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
        end
    
  end       
  
  def update
         @product = Product.find(params[:id])

         @product.name = params[:name] || @product.name
         @product.price = params[:price] || @product.price
         @product.description = params[:description] || @product.description
         @product.active = params[:active] || @product.active
         @product.supplier_id = params[:supplier_id] || @product.supplier_id
        
        if @product.save
          # happy path
          render 'show.json.jbuilder'
        else
          # sad path
          render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
        end
    
  end

  def destroy
         @product = Product.find(params[:id])
         @product.destroy 
         render json: {message: "Product successfully destroyed!"}
  end

   
  
end
