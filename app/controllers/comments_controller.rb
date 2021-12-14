class CommentsController < ApplicationController
  before_action :set_post

  def create
    # @user = User.find_by(id: session[:user_id])
    # @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = set_current_user.id
    @comment.save
    # @comment.user_id = set_current_user.id
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
