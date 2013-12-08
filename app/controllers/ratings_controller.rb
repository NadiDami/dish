class RatingsController < ApplicationController

  def create
    @meal = Meal.find params[:meal_id]
    if @rating = current_user.ratings.find_by_meal_id(@meal.id)
      @rating.destroy
    end
    @rating = @meal.ratings.build(value: params[:value], meal_id: @meal.id, user_id: current_user.id)
    @rating.save
    render json: { id: @meal.id, ratings: @meal.ratings_total, average: @meal.average_ratings_total }
  end

end

