module Api
  module V1
    class PostsController < ApplicationController
      def index
        @posts = Post.order(:created_at)
        render json: { success: true, message: 'Loaded all posts', data: { posts: @posts } }
      end
    end
  end
end
