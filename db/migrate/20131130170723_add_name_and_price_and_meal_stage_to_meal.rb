class AddNameAndPriceAndMealStageToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :name, :string
    add_column :meals, :price, :integer
    add_column :meals, :meal_stage, :string
  end
end
