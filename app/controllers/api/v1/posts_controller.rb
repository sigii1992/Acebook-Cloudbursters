module Api
  module V1
    class PostsController < ApiController

      def index
        posts = Post.all
        render json: {status: 'SUCCESS', message: 'Loaded posts', data:posts },status: :ok
      end

      def show
        post = Post.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded posts', data:post },status: :ok
      end

    end
  end
end