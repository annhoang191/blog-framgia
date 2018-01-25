class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  paginates_per 4
  scope :order_by_date_created,
  ->{order created_at: :desc}
end
