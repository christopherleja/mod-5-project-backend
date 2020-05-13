# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "idk")
user2 = User.create(username: "Madonna")

song1 = Song.create(title: "Amazing", user_id: user2.id)
song2 = Song.create(title: "Like A Prayer", user_id: user2.id)
song3 = Song.create(title: "third example", user_id: user1.id)

track1 = Track.create(song_id: song1.id, user_id: user2.id, instrument_id: 1, octave: 4)
track2 = Track.create(song_id: song1.id, user_id: user2.id, instrument_id: 6, octave: 2)
track3 = Track.create(song_id: song2.id, user_id: user2.id, instrument_id: 7, octave: 5)
track4 = Track.create(song_id: song2.id, user_id: user2.id, instrument_id: 38, octave: 7)
track5 = Track.create(song_id: song3.id, user_id: user1.id, instrument_id: 22, octave: 1)
track6 = Track.create(song_id: song3.id, user_id: user1.id, instrument_id: 11, octave: 3)

note1 = Note.create(track_id: track1.id, song_id: song1.id, played_at: 1, ended_at: 3, name: "C#")
note2 = Note.create(track_id: track1.id, song_id: song1.id, played_at: 3, ended_at: 4, name: "A#")
note3 = Note.create(track_id: track1.id, song_id: song1.id, played_at: 1, ended_at: 2, name: "F#")
note4 = Note.create(track_id: track1.id, song_id: song1.id, played_at: 4, ended_at: 5, name: "C")
note5 = Note.create(track_id: track2.id, song_id: song1.id, played_at: 1, ended_at: 4, name: "G")
note6 = Note.create(track_id: track2.id, song_id: song1.id, played_at: 5, ended_at: 7, name: "B")
note7 = Note.create(track_id: track3.id, song_id: song2.id, played_at: 7, ended_at: 9, name: "E")
note8 = Note.create(track_id: track5.id, song_id: song1.id, played_at: 1, ended_at: 5, name: "D")