class Movie < ApplicationRecord
  belongs_to :user
  has_many :watchlists, dependent: :destroy

  # Validations
  validates_presence_of :title, :year, :duration, :location, :synopsis, :genre
  serialize :genre

  # Cloudinary photo
  has_one_attached :poster
end
