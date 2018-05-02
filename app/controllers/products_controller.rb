class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    # book_object = Book.new("The Fallen")
    # @title = book_object.get_title()
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end


  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
   @product = Product.find(params[:id])
   if @product.update(product_params)
     flash[:notice] = "updated product"
     redirect_to products_path
   else
     flash[:alert] = "try again error occured"
     render :edit
   end
 end

 def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
      format.html {redirect_to products_url}
      format.js
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def product_params
    params.require(:product).permit(:name, :price, :author, :genre, :description)
  end
end
