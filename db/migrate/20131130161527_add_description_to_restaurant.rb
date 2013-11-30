class AddDescriptionToRestaurant < ActiveRecord::Migration
  def up
    change_table :restaurants do |t|
      t.text :description
    end
  end
end
