class Artist::SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def index
    @user = current_user
    @songs = @user.songs.order(created_at: :desc)
    @user_lists = List.where(user_id: current_user)

  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)
    @song.user = current_user
    if @song.save
      redirect_to artist_songs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @song.user = current_user
    if @song.update(songs_params)
      redirect_to artist_songs_path
    else
      render :new
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path
  end

  private

  def songs_params
    params.require(:song).permit(:tags, :title, :description, :music_url, :photo, :post_at, :duration, :user_id, :video)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
