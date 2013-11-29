class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new params[:restaurant].permit(:name, :city)
    @restaurant.save
    redirect_to root_path
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update params[:restaurant].permit(:name, :city)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    redirect_to root_path
  end

end
