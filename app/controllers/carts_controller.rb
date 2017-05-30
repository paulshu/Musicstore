class CartsController < ApplicationController


  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
    @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
  end

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
