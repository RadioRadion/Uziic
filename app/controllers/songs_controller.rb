class SongsController < ApplicationController

  def index
    if params[:query].present? || params[:query_town].present?
      sql_query = " \
      songs.title ILIKE :query \
      OR songs.tags ILIKE :query \
      OR songs.description ILIKE :query \
      "
      sql_query_town = "\
      users.address ILIKE :query_town \
      "
      @songs = Song.where(sql_query, query: "%#{params[:query]}%").joins(:user).where(sql_query_town, query_town: "%#{params[:query_town]}%")
    else
      @songs = Song.all
    end
  end
end


