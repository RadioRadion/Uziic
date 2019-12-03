class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @songs = @user.songs
    @user_lists = List.where(user_id: current_user)
    @reposts = current_user.reposts
    @favorites = Favorite.where(follower_id: current_user)
    @favorite = Favorite.where(follower_id: current_user, followed_id: @user).first
  end
end
