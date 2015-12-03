class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :user

  @sub_total = 0
  @tax = 0.09

end
