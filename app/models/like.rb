class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.update_likes_counter(id)
    @post = Post.find_by(id: id)
    @post.update(likesCounter: @post.likesCounter += 1)
  end
end
