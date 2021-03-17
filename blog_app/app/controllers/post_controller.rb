class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to posts_path
    else
      redirect_to new_path
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
