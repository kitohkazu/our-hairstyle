class FavoritesController < ApplicationController

  def create
    favorite = Favorite.create(user_id: current_user.id, post_id: params[:post_id])
    if favorite.save
      redirect_to post_path(params[:post_id])
    end
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, post_id: params[:post_id])
    if favorite.destroy
      redirect_to post_path(params[:post_id])
    end
  end

  def index
    @favorite_posts = Post.joins(:favorites).where(favorites: {user_id: current_user})
  end

end
