class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.page params[:page]
  end

  def contact
  end

  def help
  end

  def contact
  end

  def error
  end
end
