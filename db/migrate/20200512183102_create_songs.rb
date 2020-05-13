class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string "title"
      t.integer "user_id"
    end
  end
end
