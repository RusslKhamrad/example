class PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
    end
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        flash[:notice] = "Post successfully created"
        format.html { redirect_to(@post) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(@post) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to(posts_url) }
    end
  end

end
