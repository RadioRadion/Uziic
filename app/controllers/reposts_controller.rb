class RepostsController < ApplicationController
  def index
    @reposts = User.find(params[:user_id]).reposts
  end

  def create
    @song = Song.find(params[:song_id])
    @repost = Repost.new(song: @song)
    @repost.user = current_user
    @repost.save
  end

  def delete
    raise
  end

  private

  def repost_params
    params[:song_id]
  end
end
