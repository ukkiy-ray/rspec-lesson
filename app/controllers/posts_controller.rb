class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :image)
  end
end
