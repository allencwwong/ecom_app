class PagesController < ApplicationController
  def index

    if params[:view] == "discounted"
      @products = Product.where("price < ?", 2)
    else
      @products = Product.all 
    end

    if params[:view] == "order_by_price"
      @products = Product.order(:price)
    end

    if params[:view] == "order_by_price_desc"
      @products = Product.order(price: :desc)
    end   

    @images = Image.all


    # if params[:view] == "random"
    #   products = Product.all 
    #   random_id = []
    #   products.each do |product|
    #     random_id << product.id 
    #   end
      
    #   redirect_to "/home/#{random_id[rand(random_id.length)]}"
    # end  
 
  end

  def new
  end

  def create
    @products = Product.all
     @add_name = params[:add_name] 
    @add_price = params[:add_price] 
    @add_desc = params[:add_desc]
    @add_image = params[:add_image]
    @add_category = params[:add_category]
    Product.create(name: @add_name,price: @add_price, description: @add_desc, user_id: current_user.email, category: @add_category)

      flash[:success] = "Created!"    
    redirect_to "/home"
  end

  def show
    @id = params[:id]
    if @id == "random"
      Product.id.sample
    else
    @product = Product.find_by(id: @id)
    end


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

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end
  #  def parameters
  #   @message = params[:message]
  # end 

  # def product_list
  #   @products = Product.all
  # end

end



