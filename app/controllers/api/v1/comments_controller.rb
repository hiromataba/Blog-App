module Api
  module V1
    class CommentsController < ApplicationController
      def index
        post_id = params[:post_id]
        @comments = Comment.where({ post_id: post_id }).order(:created_at)
        render json: {
          success: true, message: "Loaded comments for post: #{post_id}", data: { comments: @comments }
        }
      end

      def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(text: comment_params[:text], user_id: current_user.id)

        if @comment.save
          render json: { success: true, data: { comment: @comment } }, status: :created
        else
          render json: { success: false, errors: @comment.errors }, status: :bad_request
        end
      rescue ActiveRecord::RecordNotFound
        no_record(params[:post_id])
      end

      private

      def comment_params
        params.require(:comment).permit(:text)
      end

      def no_record(post)
        render json: { success: false, message: "This post: #{post} does not exist" }, status: :not_found
      end
    end
  end
end
