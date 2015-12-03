class OrdersController < ApplicationController
  
  

  def create
    
    to_buy_products = current_user.carted_products.where(status: "carted")
    subtotal = calculate_subtotal(to_buy_products)
    tax = calculate_tax(to_buy_products)
    total = subtotal + tax

    @order = Order.new(user_id: current_user.id, subtotal: subtotal, tax: tax,total: total)

    if @order.save
      to_buy_products.update_all(status: "purchased", order_id: @order.id)
      redirect_to "/order/#{@order.id}"
    else
       render template: "carted_products/index"
    end
  end


  def show
    @order = Order.find_by(id: params[:id])
  end



end
