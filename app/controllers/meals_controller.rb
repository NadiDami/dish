class MealsController < ApplicationController

  def new
    @restaurant = Restaurant.find params[:restaurant_id]
    @meal = @restaurant.meals.build
  end

  def create
    @restaurant = Restaurant.find params[:restaurant_id]    
    @meal = @restaurant.meals.build params[:meal].permit(:name, :price, :meal_stage)
    @meal.save
    redirect_to @restaurant
  end

end
