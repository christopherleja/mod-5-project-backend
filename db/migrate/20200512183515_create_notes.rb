class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer "track_id"
      t.integer "song_id"
      t.integer "time"
      t.integer "duration"
      t.integer "endTime"
      t.integer "pitch"
    end
  end
end
