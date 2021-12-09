require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }

  # Fix this test!!!!
  it 'has a body' do
    post = Post.create(message: "This is a message")
    p post
    comment = post.comments.create(body: "")
    p comment
    expect(comment).to_not be_valid
    comment.body = "This is a body"
    expect(comment).to be_valid
    p post.comments
  end
end
