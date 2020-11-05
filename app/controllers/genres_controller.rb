class GenresController < ApplicationController

    def show
        select_genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    def edit
        select_genre
    end

    def update
        select_genre
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    private

    def select_genre
        @genre = Genre.find(params[:id])
    end

end
