class CartsController < ApplicationController


  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    if !current_user.blank?
      @order = Order.new
      @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
    else
      render 'devise/sessions/new'  # 如果用户未登录，需确认结帐时，则转到登录界面
    end
  end

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
