class Repost < ApplicationRecord
  belongs_to :songs
  belongs_to :users
end
