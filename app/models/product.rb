class Product < ApplicationRecord
  
  validates :name, presence: true, uniqueness: true 
  validates :price, numericality: {greater_than: 0} 
  validates :image_url, presence: true
  validates :description, length: {in: 10..500}

  def is_discounted?
    price <= 10
    #if price < 10
     # true
   # else
    #  false
   #end
    
  end

  def tax
     (price * 0.09).round(2)
  end

  def total
     price + tax
  end
end
