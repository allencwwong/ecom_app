class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def calculate_subtotal(carted_products)
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += (carted_product.product.price * carted_product.qty)
    end
    return subtotal
  end

#not finish
  def calculate_tax(carted_products)
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += (carted_product.product.price * carted_product.qty)
    end
    return subtotal
  end
end
