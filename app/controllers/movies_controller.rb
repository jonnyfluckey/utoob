class MoviesController < ApplicationController
  before_action :set_movie_id, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
    @comments = @movie.comments
    @comment = @movie.comments.find(params[:id])
  end

  def new
    @movie = Movie.new

  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save

      redirect_to movies_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :duration, :genre, :description, :tailer)
    end
    def set_movie_id
      @movie = Movie.find(params[:id])
    end
end
