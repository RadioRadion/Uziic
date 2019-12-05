class ListSongsController < ApplicationController
  def create
    @listsong = ListSong.new
    @listsong.song_id = params[:song_id]
    @listsong.list_id = params[:list_id]
    if @listsong.save
      redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

  def destroy
    @listsong = ListSong.find(params[:list_song])
    @listsong.destroy
    redirect_to edit_user_list_path
  end
end
