class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]

  def index
    if params[:category].blank?
      @products = case params[:order]
      when 'by_product_price'
          Product.all.order("price DESC")
      when 'by_product_quantity'
        Product.all.order("quantity DESC")
      else
        Product.all.recent
      end

    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(category_id:  @category_id)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      @product.quantity -= @product.buying_quantity
      @product.save
      @product.buying_quantity = 1
      flash[:notice] ="你已成功将#{@product.title}加入购物车"
    else
      flash[:warning] ="你的购物车已有此物品"
    end
    redirect_to :back
  end

  def add_buying_quantity
    @product = Product.find(params[:id])
    if @product.buying_quantity <= @product.quantity
      @product.buying_quantity +=1
      @product.save
       redirect_to :back
    end
  end

  def reduce_buying_quantity
    @product = Product.find(params[:id])
    if @product.buying_quantity > 1
      @product.buying_quantity -= 1
      @product.save
       redirect_to :back

    end
  end

  def search
    if @query_string.present?
      @products = search_params
    end
  end

  private

  def validate_search_key
   @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
  end

  def search_params
    Product.ransack({:title_or_description_cont => @query_string}).result(distinct: true)
  end
# title 为精确搜索，页加上cont即title_cont为模糊搜索
end
