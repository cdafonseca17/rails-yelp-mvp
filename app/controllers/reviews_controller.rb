class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # TO REVIEW / TRICKY
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_create)
    @review.restaurant = @restaurant
    @review.save!
    redirect_to restaurant_path(@restaurant)
  end

  # def show
  #   @reviews = Review.all
  # end

  private

  def params_create
    params.require(:review).permit(:content, :rating)
  end
end
