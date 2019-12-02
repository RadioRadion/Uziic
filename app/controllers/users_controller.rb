class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @songs = @user.songs
    @user_lists = List.where(user_id: current_user)
    @reposts = current_user.reposts
  end
end
