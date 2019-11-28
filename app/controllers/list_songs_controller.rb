class ListSongsController < ApplicationController





  def destroy
    @listsong = ListSong.find(params[:id])
    @listsong.destroy
    redirect_to edit_user_list_path
  end
end
