class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    @graphic = @review.graphics.build
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user

    if @review.save
      if params[:graphics] != nil
        params[:graphics]['image'].each do |a|
          @graphic  = @review.graphics.create!(:image => a)
        end
      end
      redirect_to product_path(@product), notice: '评论已提交！'
    else
      render :new
    end

  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to product_path(@product), notice: '评论更新成功！'
    else
      render :edit
    end
  end

  def destory
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destory
    redirect_to product_path(@product), alert: '已成功删除评论'
  end

  private

  def review_params
    # params.require(:review).permit(:content, :rating, :look, :price, graphics_attributes: [:id, :review_id, :image])
    params.require(:review).permit(:content, :rating, :look, :price)
  end

end
