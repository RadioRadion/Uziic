class List < ApplicationRecord
  belongs_to :user
  has_many :list_songs, dependent: :destroy
  has_many :songs, through: :list_song
end
