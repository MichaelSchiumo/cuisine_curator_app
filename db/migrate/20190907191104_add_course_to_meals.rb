class AddCourseToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :course, :string
  end
end
