class CartedProductsController < ApplicationController
  
  def index
   if current_user && current_user.carted_products.where(status: "carted").any?
      @carted_products = current_user.carted_products.where(status: "carted")
      @subtotal = calculate_subtotal(@carted_products)
      # @tax
      # @total
    else
      redirect_to "/"
      flash[:danger] = "please sign in to place an order."  
    end
  end

  def create

    add_qty = params[:add_qty]
    add_product = params[:add_product]

    @product = Product.find_by(id: add_product)

    @carted_product = CartedProduct.new(user_id: current_user.id ,qty: add_qty, product_id: add_product, status: "carted")

    if @carted_products.save
      flash[:success] = "#{@carted_product.qty} #{@product.name}(s) added to your shopping cart."

    redirect_to "/carted_products"

    else
      render template: "products/show/#{@product}"
    end  
  end

  def destroy
    carted_product = CartedProduct.find_by(ud: params[:id])
    carted_product.status = "removed"
    if carted_product.save
      flash[:warning] = "#{carted_product.name} removed from cart. "
  end

  private
    def calculate_subtotal(carted_products)
      subtotal = 0
      carted_products.each do |carted_product|
        subtotal += (carted_product.product.price * carted_product.qty)
      end
      return subtotal
    end
  
end
