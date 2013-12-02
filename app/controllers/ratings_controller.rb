class RatingsController < ApplicationController

  def create
    @meal = Meal.find params[:meal_id]
    @meal.ratings.create(value: params[:value])
    render json: { id: @meal.id, ratings: @meal.ratings_total, average: @meal.average_ratings_total }
  end
end

