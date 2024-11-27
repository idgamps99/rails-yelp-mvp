class RestaurantsController < ApplicationController
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # GET /restaurants/new
  def new
  end

  # POST /restaurants
  def create
  end

end
