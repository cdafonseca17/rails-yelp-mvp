class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(params_create)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id].to_i)
    @reviews = @restaurant.reviews
    # @reviews = Review.all
    # @restaurant.reviews
  end

  private

  def params_create
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
