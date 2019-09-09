class DropNameColumnFromCuisines < ActiveRecord::Migration[5.2]
  def change
    remove_column :cuisines, :name
  end
end
