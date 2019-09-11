class AddIngredientIdToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :meal_id, :integer
  end
end
