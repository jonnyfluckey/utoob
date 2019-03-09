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

  def edit
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end


end
