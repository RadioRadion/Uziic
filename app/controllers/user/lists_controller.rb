class User::ListsController < ApplicationController
  def index
    @user = current_user
    @lists = @user.lists
    @list = List.new
  end


  def create

    @lists = current_user.lists
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to user_lists_path(@list)
    else
      render 'user/lists'
    end
  end

  def edit
    @list = List.find(params[:id])
    @list_songs = ListSong.where(list_id: params[:id])
    @songs = Song.all
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to user_lists_path(@list)
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to user_lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :tags)
  end
end



