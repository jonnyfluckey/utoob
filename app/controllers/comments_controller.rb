class CommentsController < ApplicationController

  before_action :set_movie
  before_action :set_comment, only: [:show, :edit, :destroy]

  def index
    @comments = @movie.comments
  end

  def show
  end

  def new

    @comment = @movie.comments.new()
  end

  def create
    @comment = @movie.comments.new(comment_params)
    if @comment.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @comment.destroy
    redirect_to movie_comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def set_comment
    @comment = @movie.comments.find(params[:id])
  end


end
