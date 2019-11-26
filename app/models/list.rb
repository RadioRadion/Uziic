class List < ApplicationRecord
  belongs_to :users
  has_many :list_songs, dependent: :destroy
end
