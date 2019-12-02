class FavoritesController < ApplicationController

  def index
    # @favorites = Favorite.find(params[:user_id])
  end

  #  def create
  #   @song = Song.find(params[:song_id])
  #   @repost = Repost.new(song: @song)
  #   @repost.user = current_user
  #   @repost.save
  # end

  # def destroy
  #   @repost = Repost.find(params[:id])
  #   @repost.delete
  #   redirect_to user_reposts_path
  # end
end
