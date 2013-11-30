class AddRestaurantIdToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :restaurant_id, :integer
  end
end
