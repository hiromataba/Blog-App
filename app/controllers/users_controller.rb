class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts

    respond_to do |format|
      format.html
      format.json { render json: { posts: @posts, user: @user } }
    end
  end
end
