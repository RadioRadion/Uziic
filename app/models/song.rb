class Song < ApplicationRecord
  belongs_to :users
  has_many :list_songs, dependent: :destroy
  has_many :reposts, dependent: :destroy
end
