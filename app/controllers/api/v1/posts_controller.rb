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

      def create
        @user = User.find_by(id: session[:user_id])
        post = @user.posts.create(message: params[:message])
        if post.save
          render json: post, status: :created
        else
          render json: post.errors, status: :unproccessable_entity
        end
      end

    end
  end
end