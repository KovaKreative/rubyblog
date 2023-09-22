class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
    params.permit!
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your entry has been posted!"
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    params.permit!
    @post = Post.find(params[:id])
    
    if @post.update(params[:post])
      redirect_to post_path, :notice => "Your post has been updated"
    else
      render "edit"
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path, :notice => "Your post has been deleted"
  end
end
