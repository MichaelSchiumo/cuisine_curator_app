class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :type
      t.string :difficulty
      t.integer :rating, default: 0
      t.integer :user_id
      t.integer :cuisine_id
      t.string :name
      t.timestamps
    end
  end
end
