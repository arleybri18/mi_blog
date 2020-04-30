class PostsController < ApplicationController
  def index
    @posts = Post.all.order([:desc])
  end

  def show
    @post = Post.find(params[:id])
  end
end
