class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
    @post_owner = @post.user.name
    @post_owner_id = @post.user.id
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
    if @post.update_attributes post_params
      redirect_to @post
    else
      flash[:danger] = t :update_false
      render :edit
    end
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
    params.require(:post).permit(:title, :content, :picture)
  end
end
