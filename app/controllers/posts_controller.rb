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
  
  end

  def update
  
  end

  def destroy
  
  end
end
