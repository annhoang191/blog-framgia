class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  paginates_per 4

  belongs_to :user
  has_many :like_posts, dependent: :destroy
  has_many :liked_by_users, through: :like_posts, class_name: :User
  has_many :comments, dependent: :destroy
  has_many :commented_by_users, through: :comments, class_name: :User
end
