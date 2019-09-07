class RemoveTypeFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :type
  end
end
