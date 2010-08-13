class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      render :action => 'show', :id => @comment
    else
      render :action => 'edit'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
