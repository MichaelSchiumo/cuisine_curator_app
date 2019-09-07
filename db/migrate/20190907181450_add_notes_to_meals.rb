class AddNotesToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :notes, :string
  end
end
