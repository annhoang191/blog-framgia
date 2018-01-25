class User < ApplicationRecord
  paginates_per 4

  mount_uploader :picture, PictureUploader

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :like_posts
  has_many :like_many_posts, through: :like_posts, class_name: :Post
  has_many :comment_many_posts, through: :comments, class_name: :Post
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  scope :order_by_date_created, ->{order created_at: :desc}
  scope :all_except, ->user{where.not(id: user.friends.map(&:id))}
end
