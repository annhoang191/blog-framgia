class StaticPagesController < ApplicationController
  def home
    @posts = Post.order_by_date_created.page params[:page]
    ids = current_user.friends.pluck(:id) if user_signed_in?
    @posts_by_friends= Post.where(user_id: ids).order_by_date_created.page params[:page]
  end
end
