class User < ApplicationRecord
  has_many :likes
  has_many :post
  has_many :comments

  def recent_posts(limit = 3)
    post.last(limit)
  end
end
