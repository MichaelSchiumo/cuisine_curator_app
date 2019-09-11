class AddMealIdToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :ingredient_id, :integer
  end
end
