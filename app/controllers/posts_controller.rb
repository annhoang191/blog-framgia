class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build post_params
    @post.user = current_user

    if @post.save
      flash.now[:success] = "ERROR"
      redirect_to @post
    else
      flash[:danger] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_post
    @post = Post.find_by id: params[:id]
    if @post.nil?
      flash[:danger] = "ERROR"
      redirect_to root_url
    end
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
