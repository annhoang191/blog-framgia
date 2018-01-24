class Post < ApplicationRecord
  belongs_to :user
  has_many :like_events, dependent: :destroy
  has_many :liked_by_users, through: :like_posts, class_name: :User
  has_many :comments, dependent: :destroy
  has_many :commented_by_users, through: :comments, class_name: :User
end