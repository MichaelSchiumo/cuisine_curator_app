class AddUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "name"
      t.string "password_digest"
      t.string "uid"
      t.integer "years_experience"
      t.string "email"
      t.string "location"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "google_token"
      t.string "google_refresh_token"
    end
  end
end
