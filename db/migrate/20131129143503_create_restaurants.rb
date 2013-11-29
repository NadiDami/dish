class CreateRestaurants < ActiveRecord::Migration
  def change
    change_table :restaurants do |t|
      t.string :name
      t.string :city
    end
  end
end
