class SongsController < ApplicationController

    def index
        @songs = Song.all
    end
    
    def new
        @song = Song.new
        @artist = @song.build_artist
        @genre = @song.build_genre
    end

    def create 
        @song = Song.new(song_params)
        @song.save
        redirect_to songs_path(@song)
    end

    def show
        @song = Song.find_by(id: params[:id])
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end


    def update
        @song = Song.find_by(id: params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    private
    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end