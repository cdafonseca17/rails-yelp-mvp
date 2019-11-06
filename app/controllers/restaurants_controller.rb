class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    raise
  end

  def create
    @restaurant = Restaurant.create(params_create)
    redirect_to restaurants_path
  end

  private

  def params_create
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
