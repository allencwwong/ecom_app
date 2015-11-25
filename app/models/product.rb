class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :user
  has_many :images
  has_many :orders

  # def ingredient_list
  #   return ingredients.split(",")
  # end

  # def self.get_discounted
  #   Product.where("price < ?", 2)
  # end

  def friendly_created_at
    return created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def sale_message
    discount_price = 2
    if price < discount_price 
      sale_message = "Discount Item!"
    else
      sale_message = "On Sale!" 
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax 
  end

end
