class ArtistsController < ApplicationController

    def show
        select_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        select_artist
    end

    def update
        select_artist
        @artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private

    def select_artist
        @artist = Artist.find(params[:id])
    end

end
