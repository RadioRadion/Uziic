class FavoritesController < ApplicationController
  def index
    # @favorites = Favorite.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @favorite = Favorite.new(follower_id: current_user.id, followed_id: @user.id)
    if @favorite.save!
      redirect_to root_path
    else
      render new
    end
  end

  # def destroy
  #   @repost = Repost.find(params[:id])
  #   @repost.delete
  #   redirect_to user_reposts_path
  # end
end
