class PostsController < ApplicationController
  def index
    @posts = Post.includes(:images)
    @posts_men = Post.where(gender: 0).includes(:images)
    @posts_lady = Post.where(gender: 1).includes(:images)
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
      redirect_to new_post_path, alert: "画像を一枚以上選択してください"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find_by(id: @post.user_id)
    @images = Image.where(post_id: @post.id)
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: @post.id)
  end

  private

  def post_params
    params.require(:post).permit(:comment, :gender, images_attributes: [:src]).merge(user_id: current_user.id)
  end
  
end
