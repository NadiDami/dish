module MealsHelper

  def rating_button restaurant, meal, value, link_text
    button_to link_text, restaurant_meal_ratings_path(restaurant, meal, value: value, format: :json), remote: true
  end

end
