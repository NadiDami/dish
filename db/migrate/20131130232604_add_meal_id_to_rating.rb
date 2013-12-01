class AddMealIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :meal_id, :integer
  end
end
