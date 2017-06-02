class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart

  def admin_required
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end


  def current_cart
    @current_cart ||= find_cart
  end

  private

  def find_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.blank?
      cart = Cart.create
    end
    session[:cart_id] = cart.id
    return cart
  end
  # 加用户头像的定义，用devise需要这样写
  def configure_permitted_parameters
    added_params = [:name, :email, :password, :password_confirmation,:avatar]
    devise_parameter_sanitizer.permit :account_update, keys: added_params
  end

end
