class ReviewsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

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
       if params[:graphics] != nil
          params[:graphics]['image'].each do |a|
            @graphic = @review.graphics.create(:image => a)
          end
        end
        redirect_to product_path(@product)
      else
        render :new
      end
    end


    private

    def review_params
      params.require(:review).permit(:rating, :look, :price, :content, :image)
    end

end
