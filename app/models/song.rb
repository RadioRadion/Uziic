class Song < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :video, PhotoUploader

  belongs_to :user
  has_many :list_songs, dependent: :destroy
  has_many :reposts, dependent: :destroy
end
