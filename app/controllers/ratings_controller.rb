class RatingsController < ApplicationController

  def create
    @meal = Meal.find params[:meal_id]
    @meal.ratings.create(value: params[:value])
    redirect_to @meal.restaurant
  end
end


