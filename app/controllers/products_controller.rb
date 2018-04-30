class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
