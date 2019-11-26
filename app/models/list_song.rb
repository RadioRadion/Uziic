class ListSong < ApplicationRecord
  belongs_to :lists
  belongs_to :songs
end
