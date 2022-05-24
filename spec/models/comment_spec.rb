require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "Basic actions" do
    let(:comment) { build(:comment) }

    it "should save successfully'" do
      a = create_comment
      expect(a.save!).to eq(true)
    end
  end
end

def create_comment
  user = User.new(email: 'mail@mail.com')
  user.save!

  post = Post.new(title: '#Title', content: '#Content', user_id: user.id)
  post.save!

  debugger
  comment = Comment.new(content: '#Content', user_id: user.id, post_id: post.id)
  comment
end