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

track1 = Track.create(song_id: song1.id, user_id: user2.id, instrument_name: "acoustic_grand_piano")
track2 = Track.create(song_id: song1.id, user_id: user2.id, instrument_name: "acoustic_grand_piano")
track3 = Track.create(song_id: song2.id, user_id: user2.id, instrument_name: "acoustic_grand_piano")
track4 = Track.create(song_id: song2.id, user_id: user2.id, instrument_name: "acoustic_grand_piano")
track5 = Track.create(song_id: song3.id, user_id: user1.id, instrument_name: "acoustic_grand_piano")
track6 = Track.create(song_id: song3.id, user_id: user1.id, instrument_name: "acoustic_grand_piano")

note1 = Note.create(track_id: track1.id, song_id: song1.id, time: 0.0, duration: 0.25, midi_number: 72)
note2 = Note.create(track_id: track1.id, song_id: song1.id, time: 0.25, duration: 0.25, midi_number: 60)
note3 = Note.create(track_id: track1.id, song_id: song1.id, time: 0.5, duration: 0.25, midi_number: 61)
note4 = Note.create(track_id: track1.id, song_id: song1.id, time: 0.75, duration: 0.25, midi_number: 64)
note5 = Note.create(track_id: track2.id, song_id: song1.id, time: 1.0, duration: 0.25, midi_number: 72)
note6 = Note.create(track_id: track2.id, song_id: song1.id, time: 1.25, duration: 0.25, midi_number: 68)
note7 = Note.create(track_id: track3.id, song_id: song2.id, time: 0.0, duration: 0.25, midi_number: 54)
note8 = Note.create(track_id: track5.id, song_id: song1.id, time: 1.5, duration: 0.25, midi_number: 61)