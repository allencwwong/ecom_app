class OrdersController < ApplicationController
  
  def create

    add_qty = params[:add_qty]
    add_product = params[:add_product]
    price = params[:price].to_i
    add_tax = 0.09 * (price * add_qty.to_i) 
    add_subtotal = price * add_qty.to_i
    add_total = add_tax.to_i + add_subtotal.to_i

    @order = Order.new(user_id: current_user.id ,qty: add_qty, product_id: add_product, tax: add_tax, subtotal: add_subtotal, total: add_total)

    if @order.save

      flash[:success] = "Order Placed!, Order No: #{@order_id}, Qty: #{add_qty}"    
      redirect_to "/orders/#{@order.id}"
    else 
      @product = Product.find_by(id: add_product)
      render template: "pages/show"
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
