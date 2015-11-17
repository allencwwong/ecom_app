class PagesController < ApplicationController
  def index

    if params[:view] == "discounted"
      @products = Product.where("price < ?", 2)
    else
      @products = Product.all 
    end
 
  end

  def new
  end

  def create
    @products = Product.all
     @add_name = params[:add_name] 
    @add_price = params[:add_price] 
    @add_desc = params[:add_desc]
    @add_image = params[:add_image]
#    @add_type = params[:add_type]
    Product.create(name: @add_name,price: @add_price, description: @add_desc, image: @add_image)
      flash[:success] = "Created!"    
    redirect_to "/home"
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: id)
  end

  def edit
     id = params[:id]
    @product = Product.find_by(id: id)   
  end

  def update
      id = params[:id]
      product = Product.find_by(id: id)
      name = params[:add_name]
      price = params[:add_price]
      description = params[:add_desc]
      image = params[:add_image]
 #     type = params[:add_type]
      product.update(name: name,price: price, description:description, image: image)
      flash[:success] = "Updated!"
    redirect_to "/home/#{id}"      
  end

  def destroy
    id = params[:id]
    Product.find_by(id: id).destroy
      flash[:danger] = "Deleted!"    
    redirect_to "/home/" 
  end


  #  def parameters
  #   @message = params[:message]
  # end 

  # def product_list
  #   @products = Product.all
  # end

end
