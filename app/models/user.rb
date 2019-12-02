class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  has_many :favorites, dependent: :destroy
  has_many :reposts, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many :songs, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
