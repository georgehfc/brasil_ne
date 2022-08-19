class Movie < ApplicationRecord
  has_many :watchlists, dependent: :destroy
  has_many :users, through: :watchlists

  # Validations
  validates_presence_of :title, :year, :duration, :location, :synopsis, :genre
  serialize :genre

  # Cloudinary photo
  has_one_attached :poster
end
