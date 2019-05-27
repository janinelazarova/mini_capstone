class Order < ApplicationRecord

 
  has_many :carted_products
  has_many :products, through: :carted_products
  belongs_to :user
  

  # #def subtotal
  #   quantity * product.price  
  # end

  # def tax
  #   0.09 * product.price
  # end

  # def total
  #   subtotal + tax
  # end

end
