class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer "track_id"
      t.integer "song_id"
      t.integer "played_at"
      t.integer "ended_at"
      t.string "name"
    end
  end
end
