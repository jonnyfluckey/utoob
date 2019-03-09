class CommentsController < ApplicationController

  before_action :set_movie , only: [:show, :edit, :new, :destroy]

  def index
    @comments = current_user.comments
  end

  def show
  end

  def new

    @comment = @movie.comments.new()
  end

  def create
    @comment = @movie.comment.new(comment_params)
    if @comment.save
      redirect_to movie_comments_path
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


end
