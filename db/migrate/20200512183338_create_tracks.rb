class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.integer "song_id"
      t.integer "user_id"
      t.string "instrument"
    end
  end
end
