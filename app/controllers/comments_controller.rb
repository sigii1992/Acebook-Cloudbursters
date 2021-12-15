class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.create(comment_params)
    # p @comment
    # => #<Comment id: nil, body: "This is another comment", post_id: 5, created_at: nil, updated_at: nil, user_id: nil>
    # Comment id: nil
    # post_id: 5
    # user_id: nil
    @comment.user_id = set_current_user.id
    # p @comment
    # => #<Comment id: nil, body: "Comment", post_id: 5, created_at: nil, updated_at: nil, user_id: 3>
    # Comment id: nil
    # post_id: 5
    # user_id: 3
    @comment.save
    # p @comment
    # => #<Comment id: 12, body: "Commenting", post_id: 5, created_at: "2021-12-15 12:19:30.838417000 +0000", updated_at: "2021-12-15 12:19:30.838417000 +0000", user_id: 3>
    # Comment id: 12
    # post_id: 5
    # user_id: 3
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_post
    @post = Post.find(params[:post_id])
    # p @post # => #<Post id: 5, message: "This is a post with an image", created_at: "2021-12-14 17:53:36.026287000 +0000", updated_at: "2021-12-14 17:53:36.037647000 +0000", user_id: 3>
    # Post id: 5
    # user_id: 3
  end
end
