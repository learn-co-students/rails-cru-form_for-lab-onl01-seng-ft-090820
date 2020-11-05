class GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

    def create
        if !find_genre
            @genre = Genre.new(genre_params(:name, :bio))
            @genre.save
            redirect_to @genre
        end
    end

    def show
        find_genre
    end

    def edit
        find_genre
    end

    def update
        find_genre
        @genre.update(genre_params(:name, :bio))
        redirect_to @genre
    end

    private
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def find_genre
        @genre = Genre.find_by(id: params[:id])
    end
end
