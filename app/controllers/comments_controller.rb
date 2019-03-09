class CommentsController < ApplicationController

  before_action :set_comment , only: [:show, :edit, :new, :destroy]

  def index
    @comments = Comment.
    @comments = Comment.new
  end

  def show
  end

  def new
    @comments = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to  ?
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @comment.destroy
    redirect_to ?
  end

  private

  def comment_params
    params.require(:comment).permit(:?)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end


end
