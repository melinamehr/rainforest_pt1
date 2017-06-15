class ReviewsController < ApplicationController

  def new
    @review = Product.find(params[:product_id]).reviews.new
  end
  # @review = @product.reviews.build

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@review.product)
    # else
    #   :render 'products'
    end
  end

  # def edit
  #   @review = Review.find(params[:id])
  # end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end

end
