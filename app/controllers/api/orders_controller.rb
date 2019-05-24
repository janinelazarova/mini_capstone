class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
    
  end

  def create
    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id
      )
    
    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  

end
