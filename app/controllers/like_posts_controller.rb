class LikePostsController < ApplicationController
  before_action :user_signed_in?, only: [:create]

  def create
    @user = current_user.id
    @post = params[:post_id]
    @current_post = Post.find_by id: @post
    @new_like = LikePost.new user_id: @user, post_id: @post

    if @new_like.save
      @temp = true
    else
      @new_like = LikePost.find_by user_id: @user, post_id: @post
      @new_like.destroy
      @temp = false
    end
    return @temp

    respond_to do |format|
      format.html {redirect_to posts_path}
      format.js
    end
  end

end
