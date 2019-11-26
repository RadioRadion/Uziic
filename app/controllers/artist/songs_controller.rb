class Artist::SongsController < ApplicationController
  def index
    @user = current_user
    @songs = @user.songs
  end

  def show
    @song = Song.find(params[:id])
  end
end
