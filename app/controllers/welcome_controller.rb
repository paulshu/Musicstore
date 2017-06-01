class WelcomeController < ApplicationController
  # impressionist :actions=>[:index]
  def index
    @products = Product.all
  end
end
