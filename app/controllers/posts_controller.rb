class PostsController < ApplicationController
  def index
    @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:comment, :group_id, images_attributes: [:src]).merge(user_id: current_user.id)
  end
  
end
