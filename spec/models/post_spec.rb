require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }

  it 'has a message' do
    post = Post.new(message: "")
    expect(post).to_not be_valid
    post.message = "This is a message"
    expect(post).to be_valid
  end
end
