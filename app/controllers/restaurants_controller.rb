class RestaurantsController < ApplicationController
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant: params[:id])
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
