class AddDescriptionToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :description, :text_area
  end
end
