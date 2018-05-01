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

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
