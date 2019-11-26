class ListSong < ApplicationRecord
  belongs_to :list
  belongs_to :song
end
