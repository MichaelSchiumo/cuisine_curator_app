class CreateCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines do |t|
      t.string :category
      t.string :classification
      t.string :name
      t.timestamps
    end
  end
end
