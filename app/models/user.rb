class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :like_posts
  has_many :like_many_posts, through: :like_posts, class_name: :Post
  has_many :comment_many_posts, through: :comments, class_name: :Post
end
