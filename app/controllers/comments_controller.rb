class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.new(text: comment_params[:text], user: current_user)

    respond_to do |format|
      format.html do
        if comment.save
          redirect_to user_post_path(post.user.id, post.id), notice: 'Comment added!'
        else
          flash.now[:error] = 'Faild to send comment!'
          redirect_to user_post_path(post.user.id, post.id), alert: 'Failed to add comment!'
        end
      end
    end
  end

  private

  def comment_params
    params.require(:data).permit(:text)
  end
end
