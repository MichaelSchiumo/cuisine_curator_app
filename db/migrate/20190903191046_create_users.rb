class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :uid
      t.integer :years_experience
      t.string :email
      t.string :location
      t.timestamps
    end
  end
end
