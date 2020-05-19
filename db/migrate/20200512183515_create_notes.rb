class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer "track_id"
      t.integer "song_id"
      t.float "time"
      t.float "duration"
      t.integer "midiNumber"
    end
  end
end
