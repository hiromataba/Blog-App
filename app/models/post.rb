class Post < ApplicationRecord
  belongs_to :user

  def recent_comments(limit = 5)
    comments.last(limit)
  end

  def update_counter(value)
    user.update('posts_counter', value)
  end
end
