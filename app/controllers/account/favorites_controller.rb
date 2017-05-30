class Account::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = current_user.favorite_products  #列出当前用户的所有关注的产品
  end
end
