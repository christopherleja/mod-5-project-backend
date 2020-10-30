class SongsController < ApplicationController
    before_action :authenticated
    
    def index
        songs = Song.all
        
        user_songs = songs.filter{|song| @current_user.id == song.user_id }
        render json: user_songs
    end

    def show
        song = Song.find(params[:id])

        render json: song
    end

    def create
        song = Song.create(title: params[:title], user_id: @current_user.id)
        track = Track.create(song_id: song.id, user_id: song.user_id, instrument: params[:instrument]) 
        params[:notes].each do |note| 
            time = note["time"]
            duration = note["duration"]
            pitch = note["pitch"]
            endTime = note["endTime"]
            Note.create(track_id: track.id, song_id: song.id, time: time, duration: duration, pitch: pitch, endTime: endTime)
        end
        render json: song
    end

    def destroy
        
        song = Song.find(params[:id])
        song.destroy

        render json: song
    end
end