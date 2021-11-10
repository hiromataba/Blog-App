class CommentsController < ApplicationController
  def new
    @post = Comment.new
  end

  def create
    @comment = current_user.comments.new(user_id: params[:user_id], post_id: params[:post_id], text: params[:text])
    if @comment.save
      redirect_to posts_path, notice: 'Created comment successfully'
    else
      redirect_to posts_path, notice: 'something went wrong Please try again later!'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    authorize! :destroy, @comment
    @comment.destroy
    redirect_to root_path
  end
end
