class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @current_user.posts.create(post_params)
    redirect_to root_path
  end

  def destroy


  end


  private

  def post_params
    params.require(:post).permit(:title, :link)
  end


end