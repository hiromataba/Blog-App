class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  after_create :default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :name, :photo, :postsCounter, presence: true
  validates :postsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def last_posts(id)
    User.find_by(id: id).posts.last(3)
  end

  def admin?
    role == 'admin'
  end

  def default_role
    update(role: 'user')
  end
end
