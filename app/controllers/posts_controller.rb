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
  def edit
  
  end
  def create
    
  end
  def update
  
  end
  def destroy
  
  end
end
