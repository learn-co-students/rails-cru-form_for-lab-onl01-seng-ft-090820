class ArtistsController < ApplicationController

    def index
      @artist = Artist.all 
    end 

    def show
      @artist = Artist.find_by(id: params[:id])
    end 

    def new
      @artist = Artist.new
    end 

    def create
      @artist = Artist.new(artist_params(:name, :bio))
      @artist.save
      redirect_to artist_path(@artist)
    end

    def update 
      @artist = Artist.find_by(id: params[:id])
      @artist.update(artist_params(:name))
      redirect_to artist_path(@artist)
    end

    def edit
      @artist = Artist.find_by(id: params[:id])
    end 

    private

    def artist_params(*args)
		  params.require(:artist).permit(*args)
  	end

end 