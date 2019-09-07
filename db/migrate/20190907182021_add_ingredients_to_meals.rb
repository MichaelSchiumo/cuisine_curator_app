class AddIngredientsToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :ingredients, :text
  end
end
