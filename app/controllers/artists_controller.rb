class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        if !find_artist
            @artist = Artist.new(artist_params(:name, :bio))
            @artist.save
            redirect_to @artist
        end
    end

    def show
        find_artist
    end

    def edit
        find_artist
    end

    def update
        find_artist
        @artist.update(artist_params(:name, :bio))
        redirect_to @artist
    end

    private
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def find_artist
        @artist = Artist.find_by(id: params[:id])
    end

end
