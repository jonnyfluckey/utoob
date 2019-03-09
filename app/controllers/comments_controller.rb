class CommentsController < ApplicationController

  before_action :set_movie , only: [:show, :edit, :new, :destroy]

  def index
    @comments = current_user.comments
  end

  def show
  end

  def new
    @user = User.all - @comment.users
    @comment = current_user.movies.new(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to new_movie_comment_path
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
    @movie = Movie.find(params[:id])
  end


end
