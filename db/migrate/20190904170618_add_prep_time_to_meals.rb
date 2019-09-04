class AddPrepTimeToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :prep_time, :integer
  end
end
