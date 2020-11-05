class SongsController < ApplicationController

    def show
        # name in h1 tag
        # link to genre page
        # link to artist page
        select_song
    end

    def new
        @song = Song.new
    end

    def create
        # redirects to show page
        @song = Song.create(params.require(:song).permit(:name, :genre_id, :artist_id))
        redirect_to song_path(@song)
    end


    def edit
        select_song
    end

    def update
        select_song
        @song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
        redirect_to song_path(@song)
    end

    def index
        # names in p tag
        @songs = Song.all
    end

    private

    def select_song
        @song = Song.find(params[:id])
    end

end
