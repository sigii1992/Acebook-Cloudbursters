module Api
  module V1
    class PostsController < ApiController

      def index
        posts = Post.all
        render json: {status: 'SUCCESS', message: 'Loaded posts', data:posts },status: :ok
      end

      def create
        @user = User.last
        post = @user.posts.create(message: params[:message])
        render json: {status: 'SUCCESS', message: 'Saved post', data:post },status: :ok
      end

    end
  end
end