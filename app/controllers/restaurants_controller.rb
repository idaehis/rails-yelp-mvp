class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :new, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end
end
