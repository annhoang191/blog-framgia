class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  paginates_per 4
  scope :order_by_date_created,
  ->{select :id, :content, :user_id, :created_at and order date_created: :asc}
end
