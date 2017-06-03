class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user

    if @review.save
      redirect_to product_path(@product), notice: '评论已提交！'
    else
      redirect_to product_path(@product), notice: '评论不可为空！'
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
    params.require(:review).permit(:body,:star)
  end

end
