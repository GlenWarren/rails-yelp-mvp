class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    review = Review.new(strong_params)
    review.restaurant = Restaurant.find(params[:restaurant_id])
    review.save
    # raise
    redirect_to restaurant_path(review.restaurant)
  end

  private

  def strong_params
    params.require(:review).permit(:content, :rating)
  end
end
