class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :
  
  def update_counter(value)
    post.update('comments_counter', value)
  end
end
