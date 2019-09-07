class AddNotesToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :notes, :text
  end
end
