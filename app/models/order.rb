class Order < ApplicationRecord

  belongs_to :user
  belongs_to :product

  def subtotal
    quantity * product.price  
  end

  def tax
    0.09 * product.price
  end

  def total
    subtotal + tax
  end

end
