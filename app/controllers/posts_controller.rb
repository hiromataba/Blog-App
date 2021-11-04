class PostsController < ApplicationController
  # def index
  #   @posts = Post.all
  #   @users = User.all
  # end

  # def show
  #   @user = User.find(params[:post_id])
  #   @post = Post.find(params[:user_id])
  # end
  def index
    @user = User.find(params[:user_id])
    @posts = @user.recent_posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.post.find(params[:id])
    # @comments = @post.comments.all
  end
end
