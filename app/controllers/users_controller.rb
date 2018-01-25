class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user).order_by_date_created.page params[:page]
  end

  def show
    @user = User.find_by id: params[:id]
    @posts_written = User.find_by(id: params[:id]).posts.order_by_date_created
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
