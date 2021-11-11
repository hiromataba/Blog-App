class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :text, presence: true

  def update_comments_counter(id)
    post = Post.find_by(id: id)
    post.commentsCounter += 1
    post.update
  end
end
